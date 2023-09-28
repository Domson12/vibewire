// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_story_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddStoryState {
  Uint8List? get imageBytes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;
  bool get isPhotoSelected => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStoryStateCopyWith<AddStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStoryStateCopyWith<$Res> {
  factory $AddStoryStateCopyWith(
          AddStoryState value, $Res Function(AddStoryState) then) =
      _$AddStoryStateCopyWithImpl<$Res, AddStoryState>;
  @useResult
  $Res call(
      {Uint8List? imageBytes,
      bool isLoading,
      bool isSuccess,
      bool isFailure,
      bool isPhotoSelected,
      String errorMessage});
}

/// @nodoc
class _$AddStoryStateCopyWithImpl<$Res, $Val extends AddStoryState>
    implements $AddStoryStateCopyWith<$Res> {
  _$AddStoryStateCopyWithImpl(this._value, this._then);

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
    Object? isFailure = null,
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
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_AddStoryStateCopyWith<$Res>
    implements $AddStoryStateCopyWith<$Res> {
  factory _$$_AddStoryStateCopyWith(
          _$_AddStoryState value, $Res Function(_$_AddStoryState) then) =
      __$$_AddStoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List? imageBytes,
      bool isLoading,
      bool isSuccess,
      bool isFailure,
      bool isPhotoSelected,
      String errorMessage});
}

/// @nodoc
class __$$_AddStoryStateCopyWithImpl<$Res>
    extends _$AddStoryStateCopyWithImpl<$Res, _$_AddStoryState>
    implements _$$_AddStoryStateCopyWith<$Res> {
  __$$_AddStoryStateCopyWithImpl(
      _$_AddStoryState _value, $Res Function(_$_AddStoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = freezed,
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? isFailure = null,
    Object? isPhotoSelected = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_AddStoryState(
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
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
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

class _$_AddStoryState implements _AddStoryState {
  const _$_AddStoryState(
      {this.imageBytes,
      this.isLoading = false,
      this.isSuccess = false,
      this.isFailure = false,
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
  final bool isFailure;
  @override
  @JsonKey()
  final bool isPhotoSelected;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'AddStoryState(imageBytes: $imageBytes, isLoading: $isLoading, isSuccess: $isSuccess, isFailure: $isFailure, isPhotoSelected: $isPhotoSelected, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStoryState &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
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
      isFailure,
      isPhotoSelected,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddStoryStateCopyWith<_$_AddStoryState> get copyWith =>
      __$$_AddStoryStateCopyWithImpl<_$_AddStoryState>(this, _$identity);
}

abstract class _AddStoryState implements AddStoryState {
  const factory _AddStoryState(
      {final Uint8List? imageBytes,
      final bool isLoading,
      final bool isSuccess,
      final bool isFailure,
      final bool isPhotoSelected,
      final String errorMessage}) = _$_AddStoryState;

  @override
  Uint8List? get imageBytes;
  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  bool get isPhotoSelected;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AddStoryStateCopyWith<_$_AddStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
