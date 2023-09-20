
import '../model/register_model.dart';

abstract class IAuthFacade {
  Future<void> signIn({required String email, required String password});

  Future<void> register({
    required String email,
    required String password,
    required String name,
    required String lastName,
  });

  Future<void> googleSignIn();

  Future<void> facebookSignIn();

  Future<RegisterModel?> getUserData();

  String? getUid();

  Future<void> logOut();

  Future<void> addPhotoToStorage(String childName, String file, bool isPost);
}
