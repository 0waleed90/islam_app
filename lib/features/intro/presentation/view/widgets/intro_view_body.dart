import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:islam/features/intro/presentation/view/widgets/custom_Intro_view.dart';
class IntroViewBody extends StatelessWidget {
  const IntroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomIntroView(),);
  }
}
class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key,required this.dotsIndex});
 final double dotsIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      position:dotsIndex ,
      dotsCount: 4,decorator: DotsDecorator(color: Colors.yellow),);
  }
}
class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(children: [


    ],);
  }
}
