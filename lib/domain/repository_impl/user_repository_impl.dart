import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../model/post_model.dart';
import '../model/user_model.dart';
import '../repository/user_repository.dart';

@lazySingleton
class UserRepositoryImpl implements UserRepository {

  UserRepositoryImpl(this._firestore, this._firebaseAuth);

  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;

@override
Future<PostModel?> getPostSnapshot() async {
  final snapshot = await _firestore
      .collection('post')
      .where('uid', isEqualTo: _firebaseAuth.currentUser!.uid)
      .get();

  if (snapshot.docs.isEmpty) return null;

  final postModel = PostModel.fromJson(snapshot.docs.first.data());

  return postModel;
}

  @override
  Future<UserModel?> getUserData() {
    return _firestore
        .collection('users')
        .doc(_firebaseAuth.currentUser!.uid)
        .get()
        .then((value) => UserModel.fromJson(value.data()!));
  }
}