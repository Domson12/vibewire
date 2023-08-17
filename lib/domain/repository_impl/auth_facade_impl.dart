import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:vibewire/domain/model/register_model.dart';
import 'package:vibewire/domain/repository/auth_facade.dart';

@lazySingleton
class AuthFacadeImpl implements IAuthFacade {
  AuthFacadeImpl(this._firebaseAuth, this._firestore);

  final FirebaseAuth _firebaseAuth;
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
      password: password,
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
}
