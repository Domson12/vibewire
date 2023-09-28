import '../model/credentials_model.dart';
import '../model/user_model.dart';

abstract class IAuthFacade {
  Future<void> signIn({required CredentialsModel credentialsModel});

  Future<void> register({
    required UserModel userModel,
    required CredentialsModel credentialsModel,
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
