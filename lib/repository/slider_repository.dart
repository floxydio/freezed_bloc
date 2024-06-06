import 'package:dio/dio.dart';
import 'package:freezed_auth/constant/options_dio.dart';
import 'package:freezed_auth/constant/print_log.dart';
import 'package:freezed_auth/constant/shared_prefs.dart';
import 'package:freezed_auth/constant/url_config.dart';

abstract class SliderInterface {
  Future<Response<dynamic>> getSlider();
}

class SliderRepository extends SliderInterface {
  final Dio _dio;

  SliderRepository(this._dio);

  @override
  Future<Response<dynamic>> getSlider() async {
    var token = await SharedPrefs().getString("token");

    try {
      return await _dio.get('${URLConfig.baseURL}/slider',
          options: OptionsDio.getOptions(token ?? ""));
    } catch (e) {
      DebugDev.log(e);
      rethrow;
    }
  }
}

