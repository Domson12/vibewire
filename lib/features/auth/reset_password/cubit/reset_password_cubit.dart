import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/repository_impl/auth_facade_impl.dart';

part 'reset_password_state.dart';

part 'reset_password_cubit.freezed.dart';

@injectable
class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this._authFacadeImpl) : super(const ResetPasswordState());

  final AuthFacadeImpl _authFacadeImpl;

  final formKey = GlobalKey<FormState>();

  final email = TextEditingController();

  Future<void> resetPassword({required String email}) async {
    emit(state.copyWith(isLoading: true, isError: false));
    try {
      await _authFacadeImpl.resetPassword(email: email);
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
