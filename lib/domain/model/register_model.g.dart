// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterModel _$$_RegisterModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterModel(
      id: json['id'] as String?,
      profileImage: json['profileImage'] as String? ?? '',
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_RegisterModelToJson(_$_RegisterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profileImage': instance.profileImage,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
    };
