import '../model/post_model.dart';

abstract class PostRepository {
  Future<void> addStory(
    String file,
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
    String title,
  );

  Future<PostModel?> getPostSnapshot();

  Future<void> addPost(
    String file,
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
    String title,
    String description,
  );

  Future<void> addPhotoToStorage(
    String childName,
    String file,
    bool isPost,
  );
}
