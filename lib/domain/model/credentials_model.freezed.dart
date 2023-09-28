// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentials_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CredentialsModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CredentialsModelCopyWith<CredentialsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsModelCopyWith<$Res> {
  factory $CredentialsModelCopyWith(
          CredentialsModel value, $Res Function(CredentialsModel) then) =
      _$CredentialsModelCopyWithImpl<$Res, CredentialsModel>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$CredentialsModelCopyWithImpl<$Res, $Val extends CredentialsModel>
    implements $CredentialsModelCopyWith<$Res> {
  _$CredentialsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CredentialsModelCopyWith<$Res>
    implements $CredentialsModelCopyWith<$Res> {
  factory _$$_CredentialsModelCopyWith(
          _$_CredentialsModel value, $Res Function(_$_CredentialsModel) then) =
      __$$_CredentialsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_CredentialsModelCopyWithImpl<$Res>
    extends _$CredentialsModelCopyWithImpl<$Res, _$_CredentialsModel>
    implements _$$_CredentialsModelCopyWith<$Res> {
  __$$_CredentialsModelCopyWithImpl(
      _$_CredentialsModel _value, $Res Function(_$_CredentialsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_CredentialsModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CredentialsModel implements _CredentialsModel {
  const _$_CredentialsModel({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'CredentialsModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CredentialsModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CredentialsModelCopyWith<_$_CredentialsModel> get copyWith =>
      __$$_CredentialsModelCopyWithImpl<_$_CredentialsModel>(this, _$identity);
}

abstract class _CredentialsModel implements CredentialsModel {
  const factory _CredentialsModel(
      {required final String email,
      required final String password}) = _$_CredentialsModel;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_CredentialsModelCopyWith<_$_CredentialsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
