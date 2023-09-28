part of 'user_data_cubit.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState({
    @Default(false) bool isLoading,
    @Default(false) bool  isError,
    @Default('') String errorMessage,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String bio,
    @Default('') String profileImage,
    @Default(0) int followers,
    @Default(0) int likes,
    @Default(0) int following,
    @Default(0) int postLen,
  }) = _UserDataState;
}
