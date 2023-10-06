part of 'reset_password_cubit.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    @Default('') String email,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default('') String? errorMessage,
}) = _ResetPasswordState;
}
