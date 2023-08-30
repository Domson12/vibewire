import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/repository_impl/auth_facade_impl.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authFacadeImpl) : super(const AuthState());

  final AuthFacadeImpl _authFacadeImpl;

  void togglePasswordVisibility() {
    emit(
      state.copyWith(
        isPasswordVisible: !state.isPasswordVisible,
      ),
    );
  }

  void toggleConfirmPasswordVisibility() {
    emit(
      state.copyWith(
        isConfirmPasswordVisible: !state.isConfirmPasswordVisible,
      ),
    );
  }

  Future<void> register({
    required String email,
    required String password,
    required String name,
    required String lastName,
  }) async {
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
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: e.message,
          showErrorMessage: true,
        ),
      );
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    emit(state.copyWith(isLoading: true));
    try {
      await _authFacadeImpl.signIn(email: email, password: password);
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
        showErrorMessage: true,
      ));
    }
  }

  Future<void> googleSignIn() async {
    emit(state.copyWith(isLoading: true));
    try {
      await _authFacadeImpl.googleSignIn();
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
        showErrorMessage: true,
      ));
    }
  }

  Future<void> facebookSignIn() async{
    //TODO: Facebook Sign In
  }

  void logout() async {
    emit(state.copyWith(isLoading: true));
    try {
      await _authFacadeImpl.logOut();
      emit(state.copyWith(isLoading: false));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.message));
    }
  }
}
