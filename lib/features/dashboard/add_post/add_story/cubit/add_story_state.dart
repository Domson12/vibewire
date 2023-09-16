part of 'add_story_cubit.dart';

@freezed
class AddStoryState with _$AddStoryState {
  const factory AddStoryState({
    @Default('') String imageBytes,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isFailure,
    @Default('') String errorMessage,
  }) = _AddStoryState;
}
