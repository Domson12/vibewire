import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials_model.freezed.dart';

@freezed
class CredentialsModel with _$CredentialsModel {
  const factory CredentialsModel({
    required String email,
    required String password,
  }) = _CredentialsModel;
}
