part of 'photo_picker_cubit.dart';

@freezed
class PhotoPickerState with _$PhotoPickerState {
  const factory PhotoPickerState({
    Uint8List? imageBytes,
    @Default(false) bool isPhotoSelected,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default('') String errorMessage,
  }) = _PhotoPickerState;
}
