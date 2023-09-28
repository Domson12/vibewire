// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      uid: json['uid'] as String,
      postId: json['postId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      likes: json['likes'] as List<dynamic>,
      profileImage: json['profileImage'] as String? ?? '',
      title: json['title'] as String,
      description: json['description'] as String,
      postImage: json['postImage'] as String,
      datePublished: DateTime.parse(json['datePublished'] as String),
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'postId': instance.postId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'likes': instance.likes,
      'profileImage': instance.profileImage,
      'title': instance.title,
      'description': instance.description,
      'postImage': instance.postImage,
      'datePublished': instance.datePublished.toIso8601String(),
    };
