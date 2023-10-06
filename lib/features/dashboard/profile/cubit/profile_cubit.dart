import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/repository_impl/auth_facade_impl.dart';

part 'profile_state.dart';

part 'profile_cubit.freezed.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(
    this._authFacadeImpl,
  ) : super(const ProfileState());

  final AuthFacadeImpl _authFacadeImpl;

  Future<void> signOut() async {
    try {
      _authFacadeImpl.logOut();
      emit(state.copyWith(isError: false));
    } catch (e) {
      emit(state.copyWith(isError: true, errorMessage: e.toString()));
    }
  }
}
