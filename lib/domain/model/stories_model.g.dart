// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoriesModel _$$_StoriesModelFromJson(Map<String, dynamic> json) =>
    _$_StoriesModel(
      uid: json['uid'] as String,
      storiesId: json['storiesId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      likes: json['likes'] as List<dynamic>,
      profileImage: json['profileImage'] as String? ?? '',
      title: json['title'] as String,
      storiesImage: json['storiesImage'] as String,
      datePublished: DateTime.parse(json['datePublished'] as String),
    );

Map<String, dynamic> _$$_StoriesModelToJson(_$_StoriesModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'storiesId': instance.storiesId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'likes': instance.likes,
      'profileImage': instance.profileImage,
      'title': instance.title,
      'storiesImage': instance.storiesImage,
      'datePublished': instance.datePublished.toIso8601String(),
    };
