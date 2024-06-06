import 'package:dio/dio.dart';

class OptionsDio {
  static Options getOptions(String token) {

    return Options(
      headers: token == '' ? {
        'Content-Type': 'application/json',
      }  : {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token'
      },
      validateStatus: (status) {
        return status! < 500;
      },
      followRedirects: false,
    );
  }
}
