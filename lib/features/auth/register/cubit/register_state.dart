part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String name,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessages,
    @Default('') String errorMessage,
    @Default(false) bool success,
  }) = _RegisterState;
}
