import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/product_detail/product_detail_cubit.dart';
import 'package:freezed_auth/bloc/product_detail/product_detail_state.dart';
import 'package:freezed_auth/constant/font_size.dart';
import 'package:freezed_auth/constant/rupiah_converter.dart';
import 'package:freezed_auth/constant/url_config.dart';

class ProductDetail extends StatefulWidget {
  final int productId;
  const ProductDetail({super.key, required this.productId});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  void initState() {
    super.initState();
    context.read<ProductDetailCubit>().getProductDetail(widget.productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: SafeArea(
        child: BlocBuilder<ProductDetailCubit, ProductDetailState>(
          builder: (context, state) {
            return state.when(
                initial: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loaded: (p) {
                  return Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                              '${URLConfig.baseURL}/storage/product/${p.productImage}'),
                          Padding(
                            padding: const EdgeInsets.only(left: 24, right: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(p.nama ?? "",
                                        style: FontPoppins.font20.copyWith(
                                            fontWeight: FontWeight.w600)),
                                    const Icon(Icons.favorite_border,
                                        color: Colors.red),
                                  ],
                                ),
                                const SizedBox(height: 40),
                                Text("Description",
                                    style: FontPoppins.font16
                                        .copyWith(fontWeight: FontWeight.w600)),
                                const SizedBox(height: 20),
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                    "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                                    "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                                    style: FontPoppins.font14
                                        .copyWith(color: Colors.grey)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 10,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: FontPoppins.font18
                                    .copyWith(color: Colors.grey),
                              ),
                              Text(
                                RupiahConverter.convert(p.price ?? 0),
                                style: FontPoppins.font16
                                    .copyWith(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          right: 10,
                          child: SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF0D41E1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: const Text("Buy Now"),
                            ),
                          ))
                    ],
                  );
                },
                error: (msg) => Center(
                      child: Text(msg),
                    ));
          },
        ),
      ),
    ));
    ;
  }
}
