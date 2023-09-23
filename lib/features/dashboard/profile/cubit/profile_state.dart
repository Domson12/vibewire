part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String bio,
    @Default('') String profileImage,
    @Default(0) int followers,
    @Default(0) int following,
    @Default(0) int postLen,
    @Default('') String errorMessage,
  }) = _ProfileState;
}
