part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String bio,
    @Default('') String profileImage,
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
}) = _EditProfileState;
}
