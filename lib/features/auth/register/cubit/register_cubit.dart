import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/model/credentials_model.dart';
import '../../../../domain/model/user_model.dart';
import '../../../../domain/repository_impl/auth_facade_impl.dart';

part 'register_state.dart';

part 'register_cubit.freezed.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._authFacadeImpl) : super(const RegisterState());

  final AuthFacadeImpl _authFacadeImpl;

  final formKey = GlobalKey<FormState>();

  final firstName = TextEditingController();

  final lastName = TextEditingController();

  final email = TextEditingController();

  final password = TextEditingController();

  final confirmPassword = TextEditingController();

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

  Future<void> facebookSignIn() async {
    emit(state.copyWith(isLoading: true, isError: false));
    try {
      await _authFacadeImpl.facebookSignIn();
      emit(state.copyWith(isLoading: false, isError: false));
    } on FirebaseAuthException catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: e.message,
          isError: true,
        ),
      );
    }
  }

  Future<void> googleSignIn() async {
    emit(state.copyWith(isLoading: true, isError: false));
    try {
      await _authFacadeImpl.googleSignIn();
      emit(state.copyWith(isLoading: false, isError: false));
    } on FirebaseAuthException catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: e.message,
          isError: true,
        ),
      );
    }
  }

  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    emit(state.copyWith(isLoading: true, isError: false));
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
      emit(state.copyWith(isLoading: false, isError: false));
    } on FirebaseAuthException catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: e.message,
          isError: true,
        ),
      );
    }
  }
}
