part of 'image_picker_cubit.dart';

@freezed
class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState({
    Uint8List? imageBytes,
    @Default(false) bool isPhotoSelected,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default('') String errorMessage,
  }) = _ImagePickerState;
}
