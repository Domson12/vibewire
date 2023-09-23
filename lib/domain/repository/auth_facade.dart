import '../model/user_model.dart';

abstract class IAuthFacade {
  Future<void> signIn({required String email, required String password});

  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String bio,
    required String profileImage,
    required List<int> likes,
    required List<int> followers,
    required List<int> following,
  });

  Future<void> googleSignIn();

  Future<void> facebookSignIn();

  Future<void> addComment(
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
    String postId,
    String comment,
  );

  Future<UserModel?> getUserData();

  String? getUid();

  Future<void> logOut();
}
