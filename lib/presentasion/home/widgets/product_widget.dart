import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/wishlist/add_wishlist_cubit.dart';
import 'package:freezed_auth/bloc/wishlist/add_wishlist_state.dart';
import 'package:freezed_auth/constant/font_size.dart';
import 'package:freezed_auth/constant/rupiah_converter.dart';
import 'package:freezed_auth/constant/url_config.dart';
import 'package:freezed_auth/models/product_models.dart';

class ProductWidget extends StatefulWidget {
  final List<ProductData> data;
  const ProductWidget({super.key, required this.data});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.data.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(8),
          transform: Matrix4.translationValues(0.0, -30.0, 0.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "${URLConfig.baseURL}/storage/product/${widget.data[index].productImage}",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  widget.data[index].nama ?? "",
                  style: FontPoppins.font16.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      RupiahConverter.convert(widget.data[index].price ?? 0),
                      style: FontPoppins.font16.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 32,
                    height: 32,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero, // Remove default padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center, // Center align the content
                      ),
                      onPressed: () {
                        var addWishCubit = context.read<AddWishlistCubit>();
                        addWishCubit.addWishlist(AddWishlistState(
                          productId: widget.data[index].productId ?? 0,
                          productName: widget.data[index].nama ?? "",
                          productPrice: widget.data[index].price.toString(),
                          productImage: widget.data[index].productImage ?? "",
                        ));
                      },
                      child: const Text("+"),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
