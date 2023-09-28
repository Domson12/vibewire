// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddMainState {
  Uint8List? get imageBytes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isPhotoSelected => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddMainStateCopyWith<AddMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMainStateCopyWith<$Res> {
  factory $AddMainStateCopyWith(
          AddMainState value, $Res Function(AddMainState) then) =
      _$AddMainStateCopyWithImpl<$Res, AddMainState>;
  @useResult
  $Res call(
      {Uint8List? imageBytes,
      bool isLoading,
      bool isSuccess,
      bool isError,
      bool isPhotoSelected,
      String errorMessage});
}

/// @nodoc
class _$AddMainStateCopyWithImpl<$Res, $Val extends AddMainState>
    implements $AddMainStateCopyWith<$Res> {
  _$AddMainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = freezed,
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? isError = null,
    Object? isPhotoSelected = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      imageBytes: freezed == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhotoSelected: null == isPhotoSelected
          ? _value.isPhotoSelected
          : isPhotoSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddMainStateCopyWith<$Res>
    implements $AddMainStateCopyWith<$Res> {
  factory _$$_AddMainStateCopyWith(
          _$_AddMainState value, $Res Function(_$_AddMainState) then) =
      __$$_AddMainStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? imageBytes,
      bool isLoading,
      bool isSuccess,
      bool isError,
      bool isPhotoSelected,
      String errorMessage});
}

/// @nodoc
class __$$_AddMainStateCopyWithImpl<$Res>
    extends _$AddMainStateCopyWithImpl<$Res, _$_AddMainState>
    implements _$$_AddMainStateCopyWith<$Res> {
  __$$_AddMainStateCopyWithImpl(
      _$_AddMainState _value, $Res Function(_$_AddMainState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = freezed,
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? isError = null,
    Object? isPhotoSelected = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_AddMainState(
      imageBytes: freezed == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhotoSelected: null == isPhotoSelected
          ? _value.isPhotoSelected
          : isPhotoSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddMainState implements _AddMainState {
  const _$_AddMainState(
      {this.imageBytes,
      this.isLoading = false,
      this.isSuccess = false,
      this.isError = false,
      this.isPhotoSelected = false,
      this.errorMessage = ''});

  @override
  final Uint8List? imageBytes;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isPhotoSelected;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'AddMainState(imageBytes: $imageBytes, isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError, isPhotoSelected: $isPhotoSelected, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMainState &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isPhotoSelected, isPhotoSelected) ||
                other.isPhotoSelected == isPhotoSelected) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageBytes),
      isLoading,
      isSuccess,
      isError,
      isPhotoSelected,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddMainStateCopyWith<_$_AddMainState> get copyWith =>
      __$$_AddMainStateCopyWithImpl<_$_AddMainState>(this, _$identity);
}

abstract class _AddMainState implements AddMainState {
  const factory _AddMainState(
      {final Uint8List? imageBytes,
      final bool isLoading,
      final bool isSuccess,
      final bool isError,
      final bool isPhotoSelected,
      final String errorMessage}) = _$_AddMainState;

  @override
  Uint8List? get imageBytes;
  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get isError;
  @override
  bool get isPhotoSelected;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AddMainStateCopyWith<_$_AddMainState> get copyWith =>
      throw _privateConstructorUsedError;
}
