abstract class PostRepository {
  Future<void> addStory(
    String file,
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
    String title,
  );

  Future<void> addPost(
    String file,
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
    String title,
    String description,
  );
}
