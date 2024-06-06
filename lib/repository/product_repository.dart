import 'package:dio/dio.dart';
import 'package:freezed_auth/constant/options_dio.dart';
import 'package:freezed_auth/constant/print_log.dart';
import 'package:freezed_auth/constant/shared_prefs.dart';
import 'package:freezed_auth/constant/url_config.dart';

abstract class ProductInterface {
  Future<Response<dynamic>> getProduct();
}

class ProductRepository extends ProductInterface {
  final Dio _dio;

  ProductRepository(this._dio);

  @override
  Future<Response<dynamic>> getProduct() async {
    var token = await SharedPrefs().getString("token");
    try {
      return await _dio.get('${URLConfig.baseURL}/product',
          options: OptionsDio.getOptions(token ?? ""));

    } catch (e) {
      DebugDev.log(e);
      rethrow;
    }
  }
}