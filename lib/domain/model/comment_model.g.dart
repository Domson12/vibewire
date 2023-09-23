// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentModel _$$_CommentModelFromJson(Map<String, dynamic> json) =>
    _$_CommentModel(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      postId: json['postId'] as String?,
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      profileImage: json['profileImage'] as String?,
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'postId': instance.postId,
      'comment': instance.comment,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profileImage': instance.profileImage,
    };
