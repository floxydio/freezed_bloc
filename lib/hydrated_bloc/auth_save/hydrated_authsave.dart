import 'package:freezed_auth/hydrated_bloc/auth_save/hydrated_authsave_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class HydratedAuthsaveCubit extends HydratedCubit<HydratedAuthsaveState> {
  HydratedAuthsaveCubit()
      : super(const HydratedAuthsaveState(email: '', isSave: false));

  void updateEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void updateIsSave(bool isSave) {
    emit(state.copyWith(isSave: isSave));
  }

  void reset() {
    emit(const HydratedAuthsaveState(email: '', isSave: false));
  }

  @override
  HydratedAuthsaveState? fromJson(Map<String, dynamic> json) {
    return HydratedAuthsaveState(email: json["email"], isSave: json["isSave"]);
  }

  @override
  Map<String, dynamic>? toJson(HydratedAuthsaveState state) {
    return {"email": state.email, "isSave": state.isSave};
  }
}
