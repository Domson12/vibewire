part of 'add_main_cubit.dart';

@freezed
class AddMainState with _$AddMainState {
  const factory AddMainState({
    Uint8List? imageBytes,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isFailure,
    @Default(false) bool isPhotoSelected,
    @Default('') String errorMessage,
  }) = _AddMainState;
}
