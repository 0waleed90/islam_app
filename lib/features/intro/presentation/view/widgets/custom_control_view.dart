import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islam/core/util/app_router.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/features/intro/presentation/view/widgets/custom_dots_indicator.dart';

class CustomControlView extends StatelessWidget {
  const CustomControlView({
    super.key,
    required this.currentView,
    required this.pageController,
  });
  final PageController pageController;
  final double currentView;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            currentView == 1 || currentView == 2 || currentView == 3
                ? PageController().nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  )
                : null;
          },
          child: Text(
            currentView == 1 || currentView == 2 || currentView == 3
                ? 'back'
                : '',
            style: Styles.textStyle16,
          ),
        ),
        CustomDotsIndicator(dotsIndex: currentView),
        GestureDetector(
          onTap: () {
            currentView == 1 || currentView == 2 || currentView == 0
                ? pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  )
                : GoRouter.of(context).push(AppRouter.kHomeView);
          },
          child: Text(
            currentView == 3 ? 'finish' : 'next',
            style: Styles.textStyle16,
          ),
        ),
      ],
    );
  }
}
