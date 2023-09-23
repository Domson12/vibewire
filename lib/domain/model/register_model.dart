import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';

part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    required String? id,
    @Default('') String profileImage,
    required String firstName,
    required String lastName,
    required String email,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}
