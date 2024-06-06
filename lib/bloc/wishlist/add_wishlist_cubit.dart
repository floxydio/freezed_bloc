import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/wishlist/add_wishlist_state.dart';

class AddWishlistCubit extends Cubit<WishListItem> {
  AddWishlistCubit()
      : super(const WishListItem(wishList: <AddWishlistState>[]));

  void addWishlist(AddWishlistState wishlist) {
    final List<AddWishlistState> wishList = List.from(state.wishList)
      ..add(wishlist);

    emit(state.copyWith(wishList: wishList));
  }

  void removeWishlist(AddWishlistState wishlist) {
    final List<AddWishlistState> wishList = state.wishList;
    wishList.remove(wishlist);
    emit(state.copyWith(wishList: wishList));
  }

  void clearWishlist() {
    emit(const WishListItem(wishList: <AddWishlistState>[]));
  }

  void findWishlist(AddWishlistState wishlist) {
    final List<AddWishlistState> wishList = state.wishList;
    wishList.firstWhere((element) => element.productId == wishlist.productId);
    emit(state.copyWith(wishList: wishList));
  }
}
