import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../model/register_model.dart';
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
  Future<RegisterModel?> getUser() {
    //TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() {
    return _firebaseAuth.signOut();
  }

  @override
  Future<void> register({
    required String email,
    required String password,
    required String name,
    required String lastName,
  }) async {
    //create user
    UserCredential credentials =
        await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    //create user model
    RegisterModel user = RegisterModel(
      id: credentials.user?.uid,
      email: email,
      name: name,
      lastName: lastName,
    );

    //save user to firestore
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
    try {
      final googleSignIn = _googleSignIn;
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> facebookSignIn() async {
    try {
      final LoginResult result = await _facebookAuth.login();
      final AccessToken accessToken = result.accessToken!;
      final facebookAuthCredential =
          FacebookAuthProvider.credential(accessToken.token);
      await _firebaseAuth.signInWithCredential(facebookAuthCredential);
    } catch (e) {
      throw Exception(e);
    }
  }
}
