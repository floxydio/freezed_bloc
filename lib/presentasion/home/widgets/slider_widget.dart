
import 'package:flutter/material.dart';
import 'package:freezed_auth/models/slider_models.dart';

class SliderWidget extends StatelessWidget {
  final SliderModel s;
  const SliderWidget({
    super.key,
    required this.s
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0.0, -90.0, 0.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            "http://192.168.38.1:4500/storage/slider/${s.data?.sliderImage}",
            width: 330,
            height: 150,
            fit: BoxFit.cover,
          )),
    );
  }
}
