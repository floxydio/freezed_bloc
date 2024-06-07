import 'package:dio/dio.dart';
import 'package:freezed_auth/constant/options_dio.dart';
import 'package:freezed_auth/constant/print_log.dart';
import 'package:freezed_auth/constant/shared_prefs.dart';
import 'package:freezed_auth/constant/url_config.dart';

abstract class ProductInterface {
  Future<Response<dynamic>> getProduct(String? category, String? nama);
  Future<Response<dynamic>> getProductDetail(int? id);
}

class ProductRepository extends ProductInterface {
  final Dio _dio;

  ProductRepository(this._dio);

  @override
  Future<Response<dynamic>> getProduct(String? category, String? nama) async {
    var token = await SharedPrefs().getString("token");
    try {
      return await _dio.get('${URLConfig.baseURL}/product',
          queryParameters: {"category": category, "nama": nama},
          options: OptionsDio.getOptions(token ?? ""));
    } catch (e) {
      DebugDev.log(e);
      rethrow;
    }
  }

  @override
  Future<Response<dynamic>> getProductDetail(int? id) async {
    var token = await SharedPrefs().getString("token");
    try {
      return await _dio.get('${URLConfig.baseURL}/product/detail/$id',
          options: OptionsDio.getOptions(token ?? ""));
    } catch (e) {
      DebugDev.log(e);
      rethrow;
    }
  }
}
