// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_picker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImagePickerState {
  Uint8List? get imageBytes => throw _privateConstructorUsedError;
  bool get isPhotoSelected => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImagePickerStateCopyWith<ImagePickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePickerStateCopyWith<$Res> {
  factory $ImagePickerStateCopyWith(
          ImagePickerState value, $Res Function(ImagePickerState) then) =
      _$ImagePickerStateCopyWithImpl<$Res, ImagePickerState>;
  @useResult
  $Res call(
      {Uint8List? imageBytes,
      bool isPhotoSelected,
      bool isLoading,
      bool isError,
      String errorMessage});
}

/// @nodoc
class _$ImagePickerStateCopyWithImpl<$Res, $Val extends ImagePickerState>
    implements $ImagePickerStateCopyWith<$Res> {
  _$ImagePickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = freezed,
    Object? isPhotoSelected = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      imageBytes: freezed == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isPhotoSelected: null == isPhotoSelected
          ? _value.isPhotoSelected
          : isPhotoSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImagePickerStateCopyWith<$Res>
    implements $ImagePickerStateCopyWith<$Res> {
  factory _$$_ImagePickerStateCopyWith(
          _$_ImagePickerState value, $Res Function(_$_ImagePickerState) then) =
      __$$_ImagePickerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? imageBytes,
      bool isPhotoSelected,
      bool isLoading,
      bool isError,
      String errorMessage});
}

/// @nodoc
class __$$_ImagePickerStateCopyWithImpl<$Res>
    extends _$ImagePickerStateCopyWithImpl<$Res, _$_ImagePickerState>
    implements _$$_ImagePickerStateCopyWith<$Res> {
  __$$_ImagePickerStateCopyWithImpl(
      _$_ImagePickerState _value, $Res Function(_$_ImagePickerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = freezed,
    Object? isPhotoSelected = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_ImagePickerState(
      imageBytes: freezed == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isPhotoSelected: null == isPhotoSelected
          ? _value.isPhotoSelected
          : isPhotoSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImagePickerState implements _ImagePickerState {
  const _$_ImagePickerState(
      {this.imageBytes,
      this.isPhotoSelected = false,
      this.isLoading = false,
      this.isError = false,
      this.errorMessage = ''});

  @override
  final Uint8List? imageBytes;
  @override
  @JsonKey()
  final bool isPhotoSelected;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'ImagePickerState(imageBytes: $imageBytes, isPhotoSelected: $isPhotoSelected, isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagePickerState &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes) &&
            (identical(other.isPhotoSelected, isPhotoSelected) ||
                other.isPhotoSelected == isPhotoSelected) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageBytes),
      isPhotoSelected,
      isLoading,
      isError,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagePickerStateCopyWith<_$_ImagePickerState> get copyWith =>
      __$$_ImagePickerStateCopyWithImpl<_$_ImagePickerState>(this, _$identity);
}

abstract class _ImagePickerState implements ImagePickerState {
  const factory _ImagePickerState(
      {final Uint8List? imageBytes,
      final bool isPhotoSelected,
      final bool isLoading,
      final bool isError,
      final String errorMessage}) = _$_ImagePickerState;

  @override
  Uint8List? get imageBytes;
  @override
  bool get isPhotoSelected;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ImagePickerStateCopyWith<_$_ImagePickerState> get copyWith =>
      throw _privateConstructorUsedError;
}
