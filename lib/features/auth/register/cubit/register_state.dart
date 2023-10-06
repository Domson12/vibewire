part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(false) bool isPasswordNotVisible,
    @Default(false) bool isConfirmPasswordNotVisible,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default('') String? errorMessage,
}) = _RegisterState;
}
