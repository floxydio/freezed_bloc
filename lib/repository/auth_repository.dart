import 'package:dio/dio.dart';
import 'package:freezed_auth/constant/options_dio.dart';
import 'package:freezed_auth/constant/print_log.dart';
import 'package:freezed_auth/constant/url_config.dart';

abstract class AuthInterface {
  Future<Response<dynamic>> signIn(String email, String password);
}

class AuthRepository extends AuthInterface {
  final Dio _dio;

  AuthRepository(this._dio);

  @override
  Future<Response<dynamic>> signIn(String email, String password) async {
    try {
      return await _dio.post('${URLConfig.baseURL}/auth/login',
          data: {
            'email': email,
            'password': password,
          },
          options: OptionsDio.getOptions(''));
    } catch (e) {
      DebugDev.log(e);
      rethrow;
    }
  }
}
