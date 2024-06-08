import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_signup_state.freezed.dart';

@freezed
class AuthSignupState with _$AuthSignupState {
  const factory AuthSignupState({
    required String email,
    required String name,
    required String password,
    required String isSuccess,
    required bool isEmailValid,
    required bool isNameValid,
    required bool isPasswordValid,
  }) = _AuthSignupState;
}
