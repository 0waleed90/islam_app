import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
class IntroViewBody extends StatelessWidget {
  const IntroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(dotsCount: 4);
  }
}
