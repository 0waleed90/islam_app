import 'package:flutter/material.dart';
import 'package:islam/features/intro/presentation/view/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: PageController(),

      children: [
        PageViewItem(image: 'assets/photos/kabba 1.png', mainText: 'Welcome To Islam App', crossText: 'We Are Very Excited Here You In Our Community', currentView: 0,pageController: pageController,),
        PageViewItem(image: 'assets/photos/welcome 1.png', mainText: 'Reading the Quran', crossText: 'Read, And Your Lord in the most generous', currentView: 1,pageController: pageController),
        PageViewItem(image: 'assets/photos/bearish 1.png', mainText: 'أذكار', crossText: r' "يَا أَيُّهَا الَّذِينَ آمَنُوا اذْكُرُوا اللَّهَ ذِكْرًا كَثِيرًا" ', currentView: 2,pageController: pageController),
        PageViewItem(image: 'assets/photos/radio 1.png', mainText: 'Holy Quran Radio', crossText: 'you can listen to the holy Quran radio through this application', currentView: 3,pageController: pageController),
      ],
    );
  }
}
