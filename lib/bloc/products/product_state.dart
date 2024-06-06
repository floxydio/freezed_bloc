import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_auth/models/product_models.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = Initial;
  const factory ProductState.loading() = Loading;
  const factory ProductState.loaded(List<ProductData> data) = Loaded;
  const factory ProductState.error(String message) = Error;
}
