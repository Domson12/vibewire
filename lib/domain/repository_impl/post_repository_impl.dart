import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../model/post_model.dart';
import '../model/stories_model.dart';
import '../repository/post_repository.dart';

@lazySingleton
class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl(
    this._firestore,
    this._storage,
    this._firebaseAuth,
  );

  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final FirebaseStorage _storage;

  @override
  Future<String> addPhotoToStorage(
      String childName, String file, bool isPost) async {
    Reference ref =
        _storage.ref().child(childName).child(_firebaseAuth.currentUser!.uid);

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
  Future<void> addStory(
    String file,
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
    String title,
  ) async {
    String photoUrl = await addPhotoToStorage(
      'stories',
      file,
      true,
    );

    String storyId = const Uuid().v1();

    final storiesModel = StoriesModel(
      uid: uid,
      storiesId: storyId,
      firstName: firstName,
      lastName: lastName,
      likes: [],
      storiesImage: photoUrl,
      title: title,
      datePublished: DateTime.now(),
    );

    await _firestore
        .collection('stories')
        .doc(storyId)
        .set(storiesModel.toJson());
  }

  @override
  Future<void> addPost(
    String file,
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
    String title,
    String description,
  ) async {
    String photoUrl = await addPhotoToStorage(
      'post',
      file,
      true,
    );

    String postId = const Uuid().v1();

    final postModel = PostModel(
      uid: uid,
      postId: postId,
      firstName: firstName,
      lastName: lastName,
      likes: [],
      title: title,
      description: description,
      postImage: photoUrl,
      datePublished: DateTime.now(),
    );
    await _firestore.collection('post').doc(postId).set(postModel.toJson());
  }

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
}
