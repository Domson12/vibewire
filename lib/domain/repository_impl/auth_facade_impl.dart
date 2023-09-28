import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../model/comment_model.dart';
import '../model/credentials_model.dart';
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
    required UserModel userModel,
    required CredentialsModel credentialsModel,
  }) async {
    UserCredential credentials =
        await _firebaseAuth.createUserWithEmailAndPassword(
      email: credentialsModel.email,
      password: credentialsModel.password,
    );

    UserModel user = UserModel(
      uid: credentials.user!.uid,
      firstName: userModel.firstName,
      lastName: userModel.lastName,
      bio: userModel.bio,
      profileImage: userModel.profileImage,
      followers: userModel.followers,
      following: userModel.following,
      likes: userModel.likes,
      posts: userModel.posts,
    );

    await _firestore
        .collection('users')
        .doc(credentials.user?.uid)
        .set(user.toJson());
  }

  @override
  Future<void> signIn({required CredentialsModel credentialsModel}) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: credentialsModel.email,
      password: credentialsModel.password,
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

    final commentModel = CommentModel(
      id: commentId,
      userId: uid,
      postId: postId,
      comment: comment,
      createdAt: DateTime.now().toString(),
      updatedAt: '',
      firstName: firstName,
      lastName: lastName,
      profileImage: profileImage,
    );

    await _firestore
        .collection('comments')
        .doc(commentId)
        .set(commentModel.toJson());
  }
}
