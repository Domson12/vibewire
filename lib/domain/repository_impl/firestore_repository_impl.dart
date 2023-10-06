import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../model/comment_model.dart';
import '../repository/firestore_repository.dart';
import 'auth_facade_impl.dart';
import 'storage_repository_impl.dart';

@lazySingleton
class FirestoreRepositoryImpl implements FirestoreRepository {
  FirestoreRepositoryImpl(
    this._firestore,
    this._authFacadeImpl,
    this._storageRepositoryImpl,
  );

  final FirebaseFirestore _firestore;
  final StorageRepositoryImpl _storageRepositoryImpl;
  final AuthFacadeImpl _authFacadeImpl;

  @override
  Future<String> addPhotoToFirestore(
      String childName, String file, bool isPost) async {
    Reference ref = await _storageRepositoryImpl.getProfileImageReference(
      childName,
      _authFacadeImpl.getUid(),
    );

    if (isPost) {
      String id = const Uuid().v1();
      ref = ref.child(id);
    }

    UploadTask uploadTask = ref.putData(file as Uint8List);

    TaskSnapshot taskSnapshot = await uploadTask;

    String downloadUrl = await taskSnapshot.ref.getDownloadURL();

    return downloadUrl;
  }

  @override
  Future<void> addCommentToFirestore(
      String uid,
      String firstName,
      String lastName,
      String? profileImage,
      String postId,
      String comment) async {
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

  @override
  Future<void> addUserToFirestore(Map<String, dynamic> data) async {
    await _firestore
        .collection('users')
        .doc(_authFacadeImpl.getUid())
        .set(data);
  }

  @override
  Future<void> getCurrentUserFromFirestore(String uid) {
    // TODO: implement getCurrentUserFromStorage
    throw UnimplementedError();
  }

  @override
  Future<void> addPostToFirestore(
    String postId,
    Map<String, dynamic> data,
  ) async {
    await _firestore.collection('post').doc(postId).set(data);
  }

  @override
  Future<void> addStoryToFirestore(
      String storyId, Map<String, dynamic> data) async {
    await _firestore.collection('stories').doc(storyId).set(data);
  }
}
