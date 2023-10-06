part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isPasswordNotVisible,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default('') String? errorMessage,
}) = _LoginState;
}
