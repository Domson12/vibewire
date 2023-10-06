import '../model/credentials_model.dart';
import '../model/user_model.dart';

abstract class IAuthFacade {
  Future<void> signIn({required CredentialsModel credentialsModel});

  Future<void> register({
    required UserModel userModel,
    required CredentialsModel credentialsModel,
  });

  Future<void> googleSignIn();

  Future<void> resetPassword({required String email});

  Future<void> facebookSignIn();

  String? getUid();

  Future<void> logOut();
}
