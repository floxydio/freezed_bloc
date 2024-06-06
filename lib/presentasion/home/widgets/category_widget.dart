import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/products/product_cubit.dart';
import 'package:freezed_auth/constant/font_size.dart';

class CategoryWidget extends StatefulWidget {
  final List<String> data;
  const CategoryWidget({super.key, required this.data});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  int indexCurrent = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      transform: Matrix4.translationValues(0.0, -60.0, 0.0),
      child: ListView.builder(
        itemCount: widget.data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                indexCurrent = index;
                if (index == 2) {
                  context.read<ProductCubit>().getProduct(category: "t-shirt");
                } else if (index == 0) {
                  context.read<ProductCubit>().getProduct(category: "");
                } else if (index == 3) {
                  context.read<ProductCubit>().getProduct(category: "laptop");
                }
              });
            },
            child: Container(
              margin: const EdgeInsets.only(left: 24),
              width: 100,
              decoration: BoxDecoration(
                  color: indexCurrent == index
                      ? const Color(0xFF0D41E1)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Colors.black45,
                    width: .7,
                  )),
              child: Center(
                child: Text(
                  widget.data[index],
                  style: FontPoppins.font14.copyWith(
                    fontWeight: FontWeight.w600,
                    color: indexCurrent == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
