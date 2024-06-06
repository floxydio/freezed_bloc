import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/auth/auth_state.dart';
import 'package:freezed_auth/constant/shared_prefs.dart';
import 'package:freezed_auth/repository/auth_repository.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;
  AuthCubit({
    required this.authRepository,
  }) : super(const AuthState(email: '', password: '', isSuccess: ''));

  void updateEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void updatePassword(String password) {
    emit(state.copyWith(password: password));
  }

  void signIn() async {

    emit(state.copyWith(isSuccess: 'loading'));
    final data = await authRepository.signIn(state.email, state.password);
    if (data.statusCode == 200 || data.statusCode == 201) {
      SharedPrefs().setString("name", data.data["data"]["name"]);
      SharedPrefs().setString("email", data.data["data"]["email"]);
      SharedPrefs().setString("token", data.data["access_token"]);
      emit(state.copyWith(isSuccess: 'success'));
    } else if (data.statusCode != 200 || data.statusCode != 201) {
      emit(state.copyWith(isSuccess: 'fail'));
      resetStatus();
    }
  }

  void reset() {
    emit(const AuthState(email: '', password: '', isSuccess: ''));
  }

  void resetStatus() {
    emit(state.copyWith(isSuccess: ''));
  }
}
