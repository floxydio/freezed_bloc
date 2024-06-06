// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_wishlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddWishlistState {
  int get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productPrice => throw _privateConstructorUsedError;
  String get productImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddWishlistStateCopyWith<AddWishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddWishlistStateCopyWith<$Res> {
  factory $AddWishlistStateCopyWith(
          AddWishlistState value, $Res Function(AddWishlistState) then) =
      _$AddWishlistStateCopyWithImpl<$Res, AddWishlistState>;
  @useResult
  $Res call(
      {int productId,
      String productName,
      String productPrice,
      String productImage});
}

/// @nodoc
class _$AddWishlistStateCopyWithImpl<$Res, $Val extends AddWishlistState>
    implements $AddWishlistStateCopyWith<$Res> {
  _$AddWishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productPrice = null,
    Object? productImage = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddWishlistStateImplCopyWith<$Res>
    implements $AddWishlistStateCopyWith<$Res> {
  factory _$$AddWishlistStateImplCopyWith(_$AddWishlistStateImpl value,
          $Res Function(_$AddWishlistStateImpl) then) =
      __$$AddWishlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productId,
      String productName,
      String productPrice,
      String productImage});
}

/// @nodoc
class __$$AddWishlistStateImplCopyWithImpl<$Res>
    extends _$AddWishlistStateCopyWithImpl<$Res, _$AddWishlistStateImpl>
    implements _$$AddWishlistStateImplCopyWith<$Res> {
  __$$AddWishlistStateImplCopyWithImpl(_$AddWishlistStateImpl _value,
      $Res Function(_$AddWishlistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productPrice = null,
    Object? productImage = null,
  }) {
    return _then(_$AddWishlistStateImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddWishlistStateImpl implements _AddWishlistState {
  const _$AddWishlistStateImpl(
      {required this.productId,
      required this.productName,
      required this.productPrice,
      required this.productImage});

  @override
  final int productId;
  @override
  final String productName;
  @override
  final String productPrice;
  @override
  final String productImage;

  @override
  String toString() {
    return 'AddWishlistState(productId: $productId, productName: $productName, productPrice: $productPrice, productImage: $productImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWishlistStateImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, productId, productName, productPrice, productImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWishlistStateImplCopyWith<_$AddWishlistStateImpl> get copyWith =>
      __$$AddWishlistStateImplCopyWithImpl<_$AddWishlistStateImpl>(
          this, _$identity);
}

abstract class _AddWishlistState implements AddWishlistState {
  const factory _AddWishlistState(
      {required final int productId,
      required final String productName,
      required final String productPrice,
      required final String productImage}) = _$AddWishlistStateImpl;

  @override
  int get productId;
  @override
  String get productName;
  @override
  String get productPrice;
  @override
  String get productImage;
  @override
  @JsonKey(ignore: true)
  _$$AddWishlistStateImplCopyWith<_$AddWishlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishListItem {
  List<AddWishlistState> get wishList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishListItemCopyWith<WishListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListItemCopyWith<$Res> {
  factory $WishListItemCopyWith(
          WishListItem value, $Res Function(WishListItem) then) =
      _$WishListItemCopyWithImpl<$Res, WishListItem>;
  @useResult
  $Res call({List<AddWishlistState> wishList});
}

/// @nodoc
class _$WishListItemCopyWithImpl<$Res, $Val extends WishListItem>
    implements $WishListItemCopyWith<$Res> {
  _$WishListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishList = null,
  }) {
    return _then(_value.copyWith(
      wishList: null == wishList
          ? _value.wishList
          : wishList // ignore: cast_nullable_to_non_nullable
              as List<AddWishlistState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishListItemImplCopyWith<$Res>
    implements $WishListItemCopyWith<$Res> {
  factory _$$WishListItemImplCopyWith(
          _$WishListItemImpl value, $Res Function(_$WishListItemImpl) then) =
      __$$WishListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AddWishlistState> wishList});
}

/// @nodoc
class __$$WishListItemImplCopyWithImpl<$Res>
    extends _$WishListItemCopyWithImpl<$Res, _$WishListItemImpl>
    implements _$$WishListItemImplCopyWith<$Res> {
  __$$WishListItemImplCopyWithImpl(
      _$WishListItemImpl _value, $Res Function(_$WishListItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishList = null,
  }) {
    return _then(_$WishListItemImpl(
      wishList: null == wishList
          ? _value._wishList
          : wishList // ignore: cast_nullable_to_non_nullable
              as List<AddWishlistState>,
    ));
  }
}

/// @nodoc

class _$WishListItemImpl implements _WishListItem {
  const _$WishListItemImpl({required final List<AddWishlistState> wishList})
      : _wishList = wishList;

  final List<AddWishlistState> _wishList;
  @override
  List<AddWishlistState> get wishList {
    if (_wishList is EqualUnmodifiableListView) return _wishList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishList);
  }

  @override
  String toString() {
    return 'WishListItem(wishList: $wishList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListItemImpl &&
            const DeepCollectionEquality().equals(other._wishList, _wishList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wishList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListItemImplCopyWith<_$WishListItemImpl> get copyWith =>
      __$$WishListItemImplCopyWithImpl<_$WishListItemImpl>(this, _$identity);
}

abstract class _WishListItem implements WishListItem {
  const factory _WishListItem(
      {required final List<AddWishlistState> wishList}) = _$WishListItemImpl;

  @override
  List<AddWishlistState> get wishList;
  @override
  @JsonKey(ignore: true)
  _$$WishListItemImplCopyWith<_$WishListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
