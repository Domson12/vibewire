import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vibewire/domain/repository_impl/auth_facade_impl.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authFacadeImpl) : super(const AuthState());

  final AuthFacadeImpl _authFacadeImpl;

  void togglePasswordVisibility() {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  void toggleConfirmPasswordVisibility() {
    emit(
      state.copyWith(
        isConfirmPasswordVisible: !state.isConfirmPasswordVisible,
      ),
    );
  }

  void register(
      String email,
      String password,
      String name,
      String lastName,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      await _authFacadeImpl.register(
        email: email,
        password: password,
        name: name,
        lastName: lastName,
      );
      emit(state.copyWith(isLoading: false));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.message));
    }
  }
}
