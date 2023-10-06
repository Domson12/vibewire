import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../model/post_model.dart';
import '../model/stories_model.dart';
import '../repository/post_repository.dart';
import 'firestore_repository_impl.dart';

@lazySingleton
class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl(
    this._firestoreRepositoryImpl,
  );

  final FirestoreRepositoryImpl _firestoreRepositoryImpl;

  @override
  Future<void> addStory(
    String file,
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
    String title,
  ) async {
    String photoUrl = await _firestoreRepositoryImpl.addPhotoToFirestore(
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

    _firestoreRepositoryImpl.addStoryToFirestore(
      storyId,
      storiesModel.toJson(),
    );
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
    String photoUrl = await _firestoreRepositoryImpl.addPhotoToFirestore(
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
    _firestoreRepositoryImpl.addPostToFirestore(postId, postModel.toJson());
  }
}
