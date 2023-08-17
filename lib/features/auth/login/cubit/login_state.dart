part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessages,
    @Default('') String errorMessage,
    @Default(false) bool success,
    @Default(false) bool isPasswordVisible,
  }) = _LoginState;
}
