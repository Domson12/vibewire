part of 'add_story_cubit.dart';

@freezed
class AddStoryState with _$AddStoryState {
  const factory AddStoryState({
    Uint8List? imageBytes,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isFailure,
    @Default(false) bool isPhotoSelected,
    @Default('') String errorMessage,
  }) = _AddStoryState;
}
