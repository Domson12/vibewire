part of 'initial_cubit.dart';

@freezed
class InitialState with _$InitialState {
  const factory InitialState({
    @Default(false) bool isAuthorized,
  }) = _InitialState;
}
