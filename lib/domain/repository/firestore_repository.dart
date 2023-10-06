abstract class FirestoreRepository {
  Future<void> addPhotoToFirestore(String childName, String file, bool isPost);

  Future<void> addUserToFirestore(Map<String, dynamic> data);

  Future<void> addCommentToFirestore(
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
    String postId,
    String comment,
  );

  Future<void> getCurrentUserFromFirestore(String uid);

  Future<void> addStoryToFirestore(String storyId, Map<String, dynamic> data);

  Future<void> addPostToFirestore(String postId, Map<String, dynamic> data);
}
