import 'package:flutter/material.dart';
import 'package:islam/features/intro/presentation/view/widgets/custom_page_view.dart';

class IntroViewBody extends StatefulWidget {
  const IntroViewBody({super.key});

  @override
  State<IntroViewBody> createState() => _IntroViewBodyState();
}

class _IntroViewBodyState extends State<IntroViewBody> {
  PageController? pageController;
   final int dotsIndex =0;
  @override
  void initState() {
    pageController = PageController(initialPage: dotsIndex)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [CustomPageView(pageController: pageController!)]),
    );
  }
}
