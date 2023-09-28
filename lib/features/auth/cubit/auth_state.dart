part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(true) bool isPasswordNotVisible,
    @Default(true) bool isConfirmPasswordNotVisible,
    @Default(false) bool isLoggedIn,
    @Default('') String? errorMessage,
    @Default(false) bool showErrorMessage,
    @Default(false) bool isLoading,
  }) = _AuthState;
}