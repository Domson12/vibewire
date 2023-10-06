import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/model/credentials_model.dart';
import '../../../../domain/repository_impl/auth_facade_impl.dart';

part 'login_state.dart';

part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authFacadeImpl) : super(const LoginState());

  final AuthFacadeImpl _authFacadeImpl;

  final formKey = GlobalKey<FormState>();

  final email = TextEditingController();

  final password = TextEditingController();

  void togglePasswordVisibility() {
    emit(
      state.copyWith(
        isPasswordNotVisible: !state.isPasswordNotVisible,
      ),
    );
  }

  Future<void> signIn({required String email, required String password}) async {
    emit(state.copyWith(isLoading: true, isError: false));
    try {
      await _authFacadeImpl.signIn(
        credentialsModel: CredentialsModel(
          email: email,
          password: password,
        ),
      );
      emit(state.copyWith(isLoading: false, isError: false));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
        isError: true,
      ));
    }
  }
}
