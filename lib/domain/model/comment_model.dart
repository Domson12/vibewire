import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';

part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    required String? id,
    required String? userId,
    required String? postId,
    required String? comment,
    required String? createdAt,
    required String? updatedAt,
    required String? firstName,
    required String? lastName,
    required String? profileImage,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
