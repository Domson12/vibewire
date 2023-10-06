import '../model/post_model.dart';
import '../model/user_model.dart';

abstract class UserRepository {
  Future<PostModel?> getPostSnapshot();

  Future<UserModel?> getUserData();
}
