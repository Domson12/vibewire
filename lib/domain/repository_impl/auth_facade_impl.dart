import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../model/user_model.dart';
import '../repository/auth_facade.dart';

@lazySingleton
class AuthFacadeImpl implements IAuthFacade {
  AuthFacadeImpl(
    this._firebaseAuth,
    this._firestore,
    this._googleSignIn,
    this._facebookAuth,
  );

  final FirebaseAuth _firebaseAuth;

  final GoogleSignIn _googleSignIn;

  final FacebookAuth _facebookAuth;

  final FirebaseFirestore _firestore;

  @override
  Future<UserModel?> getUserData() {
    return _firestore
        .collection('users')
        .doc(_firebaseAuth.currentUser!.uid)
        .get()
        .then((value) => UserModel.fromJson(value.data()!));
  }

  @override
  Future<void> logOut() {
    return _firebaseAuth.signOut();
  }

  @override
  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String bio,
    required String profileImage,
    required List<int> followers,
    required List<int> following,
    required List<int> likes,
  }) async {
    UserCredential credentials =
        await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    UserModel user = UserModel(
      uid: credentials.user?.uid,
      firstName: firstName,
      lastName: lastName,
      bio: bio,
      profileImage: profileImage,
      followers: followers,
      following: following,
      likes: likes,
    );

    await _firestore
        .collection('users')
        .doc(credentials.user?.uid)
        .set(user.toJson());
  }

  @override
  Future<void> signIn({required String email, required String password}) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> googleSignIn() async {
    final googleSignIn = _googleSignIn;
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await _firebaseAuth.signInWithCredential(credential);
  }

  @override
  Future<void> facebookSignIn() async {
    final LoginResult result = await _facebookAuth.login();
    final AccessToken accessToken = result.accessToken!;
    final facebookAuthCredential =
        FacebookAuthProvider.credential(accessToken.token);
    await _firebaseAuth.signInWithCredential(facebookAuthCredential);
  }

  @override
  String getUid() {
    try {
      return _firebaseAuth.currentUser!.uid;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> addComment(String uid, String firstName, String lastName,
      String? profileImage, String postId, String comment) async {
    String commentId = const Uuid().v1();

    final commentModel = {
      'uid': uid,
      'commentId': commentId,
      'firstName': firstName,
      'lastName': lastName,
      'profileImage': profileImage,
      'postId': postId,
      'comment': comment,
      'datePublished': DateTime.now(),
    };

    await _firestore.collection('comments').doc(commentId).set(commentModel);
  }
}
