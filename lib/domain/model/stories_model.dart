import 'package:freezed_annotation/freezed_annotation.dart';

part 'stories_model.freezed.dart';

part 'stories_model.g.dart';

@freezed
class StoriesModel with _$StoriesModel {
  const factory StoriesModel({
    required String uid,
    required String storiesId,
    required String firstName,
    required String lastName,
    required List likes,
    @Default('') String profileImage,
    required String title,
    required String storiesImage,
    required DateTime datePublished,
  }) = _StoriesModel;

  factory StoriesModel.fromJson(Map<String, dynamic> json) =>
      _$StoriesModelFromJson(json);
}