import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/auth_signup/auth_signup_state.dart';
import 'package:freezed_auth/constant/print_log.dart';
import 'package:freezed_auth/repository/auth_repository.dart';

class AuthSignupCubit extends Cubit<AuthSignupState> {
  final AuthRepository authRepository;
  AuthSignupCubit({
    required this.authRepository,
  }) : super(const AuthSignupState(
            email: '',
            name: '',
            password: '',
            isSuccess: '',
            isEmailValid: true,
            isNameValid: true,
            isPasswordValid: true));

  void updateEmail(String email) {
    emit(state.copyWith(email: email, isEmailValid: isValidEmail(email)));
  }

  void updateName(String name) {
    emit(state.copyWith(name: name, isNameValid: isValidName(name)));
  }

  void updatePassword(String password) {
    emit(state.copyWith(
        password: password, isPasswordValid: isValidPassword(password)));
  }

  void signUp() async {
    if (!state.isEmailValid ||
        !state.isNameValid ||
        !state.isPasswordValid ||
        state.email.isEmpty ||
        state.name.isEmpty ||
        state.password.isEmpty) {
      emit(state.copyWith(isSuccess: 'validate_problem'));
      resetStatus();
      return;
    } else {
      emit(state.copyWith(isSuccess: 'loading'));

      final data =
          await authRepository.signUp(state.email, state.name, state.password);
      if (data.statusCode == 200 || data.statusCode == 201) {
        emit(state.copyWith(isSuccess: 'success'));
        resetStatus();
      } else if (data.statusCode != 200 || data.statusCode != 201) {
        emit(state.copyWith(isSuccess: 'fail'));
        resetStatus();
      }
    }
  }

  void reset() {
    emit(const AuthSignupState(
        email: '',
        name: '',
        password: '',
        isSuccess: '',
        isEmailValid: true,
        isNameValid: true,
        isPasswordValid: true));
  }

  bool isValidEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }

  bool isValidName(String name) {
    return name.isNotEmpty && name.length >= 3;
  }

  bool isValidPassword(String password) {
    return password.length >= 6;
  }

  void resetStatus() {
    emit(state.copyWith(isSuccess: ''));
  }
}
