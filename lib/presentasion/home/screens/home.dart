import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/category/category_cubit.dart';
import 'package:freezed_auth/bloc/category/category_state.dart';
import 'package:freezed_auth/bloc/products/product_cubit.dart';
import 'package:freezed_auth/bloc/products/product_state.dart';
import 'package:freezed_auth/bloc/slider/slider_cubit.dart';
import 'package:freezed_auth/bloc/slider/slider_state.dart';
import 'package:freezed_auth/constant/font_size.dart';
import 'package:freezed_auth/presentasion/home/widgets/category_widget.dart';
import 'package:freezed_auth/presentasion/home/widgets/product_widget.dart';
import 'package:freezed_auth/presentasion/home/widgets/slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? indexCurrent = 0;
  @override
  void initState() {
    super.initState();
    context.read<SliderCubit>().getSlider();
    context.read<CategoryCubit>().getCategories();
    context.read<ProductCubit>().getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
              color: const Color(0xff313131),
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 259,
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search product...",
                            hintStyle: FontPoppins.font14
                                .copyWith(color: const Color(0xffA2A2A2)),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            filled: true,
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BlocBuilder<SliderCubit, SliderState>(
              builder: (context, sliderState) {
                return sliderState.when(initial: () {
                  return const SizedBox();
                }, loading: () {
                  return const CircularProgressIndicator();
                }, loaded: (s) {
                  return SliderWidget(s: s);
                }, error: (message) {
                  return Text(message);
                });
              },
            ),
            BlocBuilder<CategoryCubit, CategoryState>(
              builder: (context, categoryState) {
                return categoryState.when(initial: () {
                  return const SizedBox();
                }, loading: () {
                  return const CircularProgressIndicator();
                }, loaded: (data) {
                  return CategoryWidget(data: data);
                }, error: (message) {
                  return Text(message);
                });
              },
            ),
            BlocBuilder<ProductCubit, ProductState>(
                builder: (context, productState) {
              return productState.when(initial: () {
                return const SizedBox();
              }, error: (message) {
                return Text(message);
              }, loading: () {
                return const CircularProgressIndicator();
              }, loaded: (data) {
                return ProductWidget(data: data);
              });
            })
          ],
        ),
      )),
    );
  }
}
