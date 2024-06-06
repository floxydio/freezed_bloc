import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/products/product_state.dart';
import 'package:freezed_auth/models/product_models.dart';
import 'package:freezed_auth/repository/product_repository.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository productRepository;

  ProductCubit({required this.productRepository})
      : super(const ProductState.initial());

  void getProduct({String? category}) async {
    emit(const ProductState.loading());
    try {
      final data = await productRepository.getProduct(category);
      if (data.statusCode == 200) {
        List<dynamic> rawData = data.data["data"];
        List<ProductData> productList =
            rawData.map((item) => ProductData.fromJson(item)).toList();
        emit(ProductState.loaded(ProductModel(data: productList).data!));
      } else {
        emit(const ProductState.error('Failed to load data'));
      }
    } catch (e) {
      emit(const ProductState.error('Failed to load data'));
    }
  }
}
