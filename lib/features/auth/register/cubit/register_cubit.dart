import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_state.dart';

part 'register_cubit.freezed.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState());

  void nameChanged(String newName) {
    emit(state.copyWith(name: newName));
  }

  void lastNameChanged(String newLastName) {
    emit(state.copyWith(lastName: newLastName));
  }

  void emailChanged(String newEmail) {
    emit(state.copyWith(email: newEmail));
  }

  void passwordChanged(String newPassword) {
    emit(state.copyWith(password: newPassword));
  }

  void confirmPasswordChanged(String newConfirmPassword) {
    emit(state.copyWith(confirmPassword: newConfirmPassword));
  }

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(state.copyWith(isPasswordVisible: isPasswordVisible));
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible = !isConfirmPasswordVisible;
    emit(state.copyWith(isConfirmPasswordVisible: isConfirmPasswordVisible));
  }

  void register() {
    //TODO: Implement register logic
  }
}
