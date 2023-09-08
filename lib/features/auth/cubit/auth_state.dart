part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default(false) bool isLoggedIn,
    @Default('') String? errorMessage,
    @Default(false) bool showErrorMessage,
    @Default(false) bool isLoading,
  }) = _AuthState;
}