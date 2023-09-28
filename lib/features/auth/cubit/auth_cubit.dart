import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/repository_impl/auth_facade_impl.dart';
import '../../../domain/model/credentials_model.dart';
import '../../../domain/model/user_model.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authFacadeImpl) : super(const AuthState());

  final AuthFacadeImpl _authFacadeImpl;

  void togglePasswordVisibility() {
    emit(
      state.copyWith(
        isPasswordNotVisible: !state.isPasswordNotVisible,
      ),
    );
  }

  void toggleConfirmPasswordVisibility() {
    emit(
      state.copyWith(
        isConfirmPasswordNotVisible: !state.isConfirmPasswordNotVisible,
      ),
    );
  }

  String getUuid() {
    return _authFacadeImpl.getUid();
  }

  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    emit(state.copyWith(isLoading: true, showErrorMessage: false));
    try {
      await _authFacadeImpl.register(
        credentialsModel: CredentialsModel(
          email: email,
          password: password,
        ),
        userModel: UserModel(
          firstName: firstName,
          lastName: lastName,
          bio: '',
          profileImage: '',
          followers: [],
          following: [],
          likes: [],
          posts: [],
        ),
      );
      emit(state.copyWith(isLoading: false, showErrorMessage: false));
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
    emit(state.copyWith(isLoading: true, showErrorMessage: false));
    try {
      await _authFacadeImpl.signIn(
        credentialsModel: CredentialsModel(
          email: email,
          password: password,
        ),
      );
      emit(state.copyWith(isLoading: false, showErrorMessage: false));
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

  Future<void> facebookSignIn() async {
    emit(state.copyWith(isLoading: true));
    try {
      await _authFacadeImpl.facebookSignIn();
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
        showErrorMessage: true,
      ));
    }
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
