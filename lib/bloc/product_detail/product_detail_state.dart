import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_auth/models/product_models.dart';

part 'product_detail_state.freezed.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial() = Initial;
  const factory ProductDetailState.loading() = Loading;
  const factory ProductDetailState.loaded(ProductData data) = Loaded;
  const factory ProductDetailState.error(String message) = Error;
}
