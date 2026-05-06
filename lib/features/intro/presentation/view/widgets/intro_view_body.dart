import 'package:flutter/material.dart';
import 'package:islam/features/intro/presentation/view/widgets/custom_page_view.dart';
import 'package:islam/features/intro/presentation/view/widgets/page_view_item.dart';

class IntroViewBody extends StatefulWidget {
  const IntroViewBody({super.key});

  @override
  State<IntroViewBody> createState() => _IntroViewBodyState();
}

class _IntroViewBodyState extends State<IntroViewBody> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController(initialPage: currentPage)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomPageView(pageController: pageController));
  }
}
