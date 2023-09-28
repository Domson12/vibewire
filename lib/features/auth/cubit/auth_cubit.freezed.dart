// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  bool get isPasswordNotVisible => throw _privateConstructorUsedError;
  bool get isConfirmPasswordNotVisible => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isPasswordNotVisible,
      bool isConfirmPasswordNotVisible,
      bool isLoggedIn,
      String? errorMessage,
      bool showErrorMessage,
      bool isLoading});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordNotVisible = null,
    Object? isConfirmPasswordNotVisible = null,
    Object? isLoggedIn = null,
    Object? errorMessage = freezed,
    Object? showErrorMessage = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isPasswordNotVisible: null == isPasswordNotVisible
          ? _value.isPasswordNotVisible
          : isPasswordNotVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordNotVisible: null == isConfirmPasswordNotVisible
          ? _value.isConfirmPasswordNotVisible
          : isConfirmPasswordNotVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPasswordNotVisible,
      bool isConfirmPasswordNotVisible,
      bool isLoggedIn,
      String? errorMessage,
      bool showErrorMessage,
      bool isLoading});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordNotVisible = null,
    Object? isConfirmPasswordNotVisible = null,
    Object? isLoggedIn = null,
    Object? errorMessage = freezed,
    Object? showErrorMessage = null,
    Object? isLoading = null,
  }) {
    return _then(_$_AuthState(
      isPasswordNotVisible: null == isPasswordNotVisible
          ? _value.isPasswordNotVisible
          : isPasswordNotVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordNotVisible: null == isConfirmPasswordNotVisible
          ? _value.isConfirmPasswordNotVisible
          : isConfirmPasswordNotVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.isPasswordNotVisible = true,
      this.isConfirmPasswordNotVisible = true,
      this.isLoggedIn = false,
      this.errorMessage = '',
      this.showErrorMessage = false,
      this.isLoading = false});

  @override
  @JsonKey()
  final bool isPasswordNotVisible;
  @override
  @JsonKey()
  final bool isConfirmPasswordNotVisible;
  @override
  @JsonKey()
  final bool isLoggedIn;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final bool showErrorMessage;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AuthState(isPasswordNotVisible: $isPasswordNotVisible, isConfirmPasswordNotVisible: $isConfirmPasswordNotVisible, isLoggedIn: $isLoggedIn, errorMessage: $errorMessage, showErrorMessage: $showErrorMessage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isPasswordNotVisible, isPasswordNotVisible) ||
                other.isPasswordNotVisible == isPasswordNotVisible) &&
            (identical(other.isConfirmPasswordNotVisible,
                    isConfirmPasswordNotVisible) ||
                other.isConfirmPasswordNotVisible ==
                    isConfirmPasswordNotVisible) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isPasswordNotVisible,
      isConfirmPasswordNotVisible,
      isLoggedIn,
      errorMessage,
      showErrorMessage,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isPasswordNotVisible,
      final bool isConfirmPasswordNotVisible,
      final bool isLoggedIn,
      final String? errorMessage,
      final bool showErrorMessage,
      final bool isLoading}) = _$_AuthState;

  @override
  bool get isPasswordNotVisible;
  @override
  bool get isConfirmPasswordNotVisible;
  @override
  bool get isLoggedIn;
  @override
  String? get errorMessage;
  @override
  bool get showErrorMessage;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
