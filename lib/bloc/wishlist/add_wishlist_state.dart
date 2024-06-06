import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_wishlist_state.freezed.dart';

@freezed
class AddWishlistState with _$AddWishlistState {
  const factory AddWishlistState({
    required int productId,
    required String productName,
    required String productPrice,
    required String productImage,
  }) = _AddWishlistState;
}

@freezed
class WishListItem with _$WishListItem {
  const factory WishListItem({
    required List<AddWishlistState> wishList,
  }) = _WishListItem;
}
