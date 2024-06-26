import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required String email,
    required String password,
    required String isSuccess,
  }) = _AuthState;
}
