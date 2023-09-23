import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/model/post_model.dart';
import '../../../../domain/model/user_model.dart';
import '../../../../domain/repository_impl/auth_facade_impl.dart';
import '../../../../domain/repository_impl/post_repository_impl.dart';

part 'profile_state.dart';

part 'profile_cubit.freezed.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(
    this._authFacadeImpl,
    this._postRepositoryImpl,
  ) : super(const ProfileState()) {
    _init();
  }

  final AuthFacadeImpl _authFacadeImpl;

  final PostRepositoryImpl _postRepositoryImpl;

  void _init() {
    _userSnapshot();
    _postSnapshot();
  }

  Future<void> _userSnapshot() async {
    emit(state.copyWith(isLoading: true));
    try {
      UserModel? user = await _authFacadeImpl.getUserData();
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

  Future<PostModel?> _postSnapshot() async {
    emit(state.copyWith(isLoading: true));
    try {
      final post = await _postRepositoryImpl.getPostSnapshot();
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

  Future<void> signOut() async {
    try {
      _authFacadeImpl.logOut();
      emit(state.copyWith(isError: false));
    } catch (e) {
      emit(state.copyWith(isError: true, errorMessage: e.toString()));
    }
  }
}
