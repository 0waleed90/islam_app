import 'package:flutter/material.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/core/util/widgets/logo_image.dart';
import 'package:islam/features/intro/presentation/view/widgets/page_view_item.dart';
import 'package:islam/features/intro/presentation/view/widgets/custom_control_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.image, required this.mainText, required this.crossText, required this.currentView, required this.pageController});
final String image;
final String mainText;
  final String crossText;
  final double currentView;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .spaceEvenly,
        children: [
          LogoImage(),
          Image.asset(image),
          Text(mainText, style: Styles.textStyle24),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              crossText,
              style: Styles.textStyle20,
              textAlign: .center,
            ),
          ),
           CustomControlView(currentView: currentView, pageController: pageController,),
        ],
      ),
    );
  }
}
