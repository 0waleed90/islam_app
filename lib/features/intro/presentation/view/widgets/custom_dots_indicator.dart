import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:islam/core/constants.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, required this.dotsIndex});
  final double dotsIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      position: dotsIndex,
      dotsCount: 4,
      decorator: DotsDecorator(
        color: kPrimaryColor,
        activeColor: Colors.yellow,

      ),
    );
  }
}
