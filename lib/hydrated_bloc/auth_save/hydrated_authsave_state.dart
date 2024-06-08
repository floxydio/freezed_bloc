import 'package:freezed_annotation/freezed_annotation.dart';

part 'hydrated_authsave_state.freezed.dart';

@freezed
class HydratedAuthsaveState with _$HydratedAuthsaveState {
  const factory HydratedAuthsaveState({
    required String email,
    required bool isSave,
  }) = _HydratedAuthsaveState;
}
