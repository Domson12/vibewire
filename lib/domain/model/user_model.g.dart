// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      uid: json['uid'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      bio: json['bio'] as String,
      profileImage: json['profileImage'] as String,
      followers: json['followers'] as List<dynamic>,
      following: json['following'] as List<dynamic>,
      likes: json['likes'] as List<dynamic>,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'bio': instance.bio,
      'profileImage': instance.profileImage,
      'followers': instance.followers,
      'following': instance.following,
      'likes': instance.likes,
    };
