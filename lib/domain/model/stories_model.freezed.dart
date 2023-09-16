// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoriesModel _$StoriesModelFromJson(Map<String, dynamic> json) {
  return _StoriesModel.fromJson(json);
}

/// @nodoc
mixin _$StoriesModel {
  String get uid => throw _privateConstructorUsedError;
  String get storiesId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  List<dynamic> get likes => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  String get storiesImage => throw _privateConstructorUsedError;
  DateTime get datePublished => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoriesModelCopyWith<StoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesModelCopyWith<$Res> {
  factory $StoriesModelCopyWith(
          StoriesModel value, $Res Function(StoriesModel) then) =
      _$StoriesModelCopyWithImpl<$Res, StoriesModel>;
  @useResult
  $Res call(
      {String uid,
      String storiesId,
      String name,
      String lastName,
      List<dynamic> likes,
      String profileImage,
      String storiesImage,
      DateTime datePublished});
}

/// @nodoc
class _$StoriesModelCopyWithImpl<$Res, $Val extends StoriesModel>
    implements $StoriesModelCopyWith<$Res> {
  _$StoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? storiesId = null,
    Object? name = null,
    Object? lastName = null,
    Object? likes = null,
    Object? profileImage = null,
    Object? storiesImage = null,
    Object? datePublished = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      storiesId: null == storiesId
          ? _value.storiesId
          : storiesId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      storiesImage: null == storiesImage
          ? _value.storiesImage
          : storiesImage // ignore: cast_nullable_to_non_nullable
              as String,
      datePublished: null == datePublished
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoriesModelCopyWith<$Res>
    implements $StoriesModelCopyWith<$Res> {
  factory _$$_StoriesModelCopyWith(
          _$_StoriesModel value, $Res Function(_$_StoriesModel) then) =
      __$$_StoriesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String storiesId,
      String name,
      String lastName,
      List<dynamic> likes,
      String profileImage,
      String storiesImage,
      DateTime datePublished});
}

/// @nodoc
class __$$_StoriesModelCopyWithImpl<$Res>
    extends _$StoriesModelCopyWithImpl<$Res, _$_StoriesModel>
    implements _$$_StoriesModelCopyWith<$Res> {
  __$$_StoriesModelCopyWithImpl(
      _$_StoriesModel _value, $Res Function(_$_StoriesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? storiesId = null,
    Object? name = null,
    Object? lastName = null,
    Object? likes = null,
    Object? profileImage = null,
    Object? storiesImage = null,
    Object? datePublished = null,
  }) {
    return _then(_$_StoriesModel(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      storiesId: null == storiesId
          ? _value.storiesId
          : storiesId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      storiesImage: null == storiesImage
          ? _value.storiesImage
          : storiesImage // ignore: cast_nullable_to_non_nullable
              as String,
      datePublished: null == datePublished
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoriesModel implements _StoriesModel {
  const _$_StoriesModel(
      {required this.uid,
      required this.storiesId,
      required this.name,
      required this.lastName,
      required final List<dynamic> likes,
      required this.profileImage,
      required this.storiesImage,
      required this.datePublished})
      : _likes = likes;

  factory _$_StoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoriesModelFromJson(json);

  @override
  final String uid;
  @override
  final String storiesId;
  @override
  final String name;
  @override
  final String lastName;
  final List<dynamic> _likes;
  @override
  List<dynamic> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  final String profileImage;
  @override
  final String storiesImage;
  @override
  final DateTime datePublished;

  @override
  String toString() {
    return 'StoriesModel(uid: $uid, storiesId: $storiesId, name: $name, lastName: $lastName, likes: $likes, profileImage: $profileImage, storiesImage: $storiesImage, datePublished: $datePublished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.storiesId, storiesId) ||
                other.storiesId == storiesId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.storiesImage, storiesImage) ||
                other.storiesImage == storiesImage) &&
            (identical(other.datePublished, datePublished) ||
                other.datePublished == datePublished));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      storiesId,
      name,
      lastName,
      const DeepCollectionEquality().hash(_likes),
      profileImage,
      storiesImage,
      datePublished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoriesModelCopyWith<_$_StoriesModel> get copyWith =>
      __$$_StoriesModelCopyWithImpl<_$_StoriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoriesModelToJson(
      this,
    );
  }
}

abstract class _StoriesModel implements StoriesModel {
  const factory _StoriesModel(
      {required final String uid,
      required final String storiesId,
      required final String name,
      required final String lastName,
      required final List<dynamic> likes,
      required final String profileImage,
      required final String storiesImage,
      required final DateTime datePublished}) = _$_StoriesModel;

  factory _StoriesModel.fromJson(Map<String, dynamic> json) =
      _$_StoriesModel.fromJson;

  @override
  String get uid;
  @override
  String get storiesId;
  @override
  String get name;
  @override
  String get lastName;
  @override
  List<dynamic> get likes;
  @override
  String get profileImage;
  @override
  String get storiesImage;
  @override
  DateTime get datePublished;
  @override
  @JsonKey(ignore: true)
  _$$_StoriesModelCopyWith<_$_StoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
