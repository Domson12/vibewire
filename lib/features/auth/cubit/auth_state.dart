part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default('') String? errorMessage,
    @Default(false) bool isLoading,
  }) = _AuthState;
}
