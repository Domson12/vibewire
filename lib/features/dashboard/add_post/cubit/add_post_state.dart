part of 'add_post_cubit.dart';

@freezed
class AddPostState with _$AddPostState {
  const factory AddPostState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isFailure,
    @Default('') String errorMessage,
  }) = _AddPostState;
}
