import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';

part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required String uid,
    required String postId,
    required String firstName,
    required String lastName,
    required List likes,
    @Default('') String profileImage,
    required String title,
    required String description,
    required String postImage,
    required DateTime datePublished,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}