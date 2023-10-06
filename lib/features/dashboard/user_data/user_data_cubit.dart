import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/model/post_model.dart';
import '../../../domain/model/user_model.dart';
import '../../../domain/repository_impl/auth_facade_impl.dart';
import '../../../domain/repository_impl/user_repository_impl.dart';

part 'user_data_state.dart';

part 'user_data_cubit.freezed.dart';

@injectable
class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit(
    this._userRepositoryImpl,
    this._authFacadeImpl,
  ) : super(const UserDataState());

  void init() {
    _userSnapshot();
    _postSnapshot();
  }

  final UserRepositoryImpl _userRepositoryImpl;
  final AuthFacadeImpl _authFacadeImpl;

  String getUid() {
    return _authFacadeImpl.getUid();
  }

  Future<PostModel?> _postSnapshot() async {
    emit(state.copyWith(isLoading: true));
    try {
      final post = await _userRepositoryImpl.getPostSnapshot();
      emit(state.copyWith(isError: false, isLoading: false));
      return post;
    } catch (e) {
      emit(
        state.copyWith(
          isError: true,
          isLoading: false,
          errorMessage: e.toString(),
        ),
      );
    }
    return null;
  }

  Future<void> _userSnapshot() async {
    emit(state.copyWith(isLoading: true));
    try {
      UserModel? user = await _userRepositoryImpl.getUserData();
      emit(state.copyWith(
        isError: false,
        isLoading: false,
        firstName: user!.firstName,
        lastName: user.lastName,
        bio: user.bio,
        profileImage: user.profileImage,
        followers: user.followers.length,
        following: user.following.length,
        likes: user.likes.length,
      ));
    } catch (e) {
      emit(
        state.copyWith(
          isError: true,
          isLoading: false,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
