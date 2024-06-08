import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/product_detail/product_detail_state.dart';
import 'package:freezed_auth/models/product_models.dart';
import 'package:freezed_auth/repository/product_repository.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  final ProductRepository _productRepository;

  ProductDetailCubit(this._productRepository)
      : super(const ProductDetailState.initial());

  void getProductDetail(int productId) async {
    emit(const ProductDetailState.loading());
    try {
      final product = await _productRepository.getProductDetail(productId);
      var resbody = ProductData.fromJson(product.data["data"]);
      // console.log(product.data["data"]);
      // console.log(resbody);
      emit(ProductDetailState.loaded(resbody));
    } catch (e) {
      emit(ProductDetailState.error(e.toString()));
    }
  }
}
