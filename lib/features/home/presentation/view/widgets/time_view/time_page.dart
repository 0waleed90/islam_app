import 'package:flutter/material.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/core/util/widgets/logo_image.dart';
import 'package:islam/features/home/presentation/view/widgets/time_view/athan_time_list_view_item.dart';
import 'package:islam/features/home/presentation/view/widgets/time_view/custom_history_widget.dart';

class TimePage extends StatefulWidget {
  const TimePage({super.key});

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  PageController _pageController = new PageController();
  final int currentItem = 2;
  double _calculateScale(int index) {
    double pagePosition = _pageController.page ?? 2;
    double distance = (pagePosition - index).abs();
    double scale = 1 - (distance * 0.3);
    return scale.clamp(0.8, 2);
  }

  @override
  void initState() {
    _pageController =
        PageController(initialPage: currentItem, viewportFraction: 0.3)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          Image.asset('assets/photos/time_Background.png'),
          Column(
            children: [
              SizedBox(height: 20,),
              LogoImage(),
              Container(
                color: Color(0xff856B3F),
                height: 300,
                child: Column(
                  children: [
                    CustomHistoryWidget(),
                    Container(
                      color: kPrimaryColor,
                      height: 128,

                      child: new PageView.builder(
                        controller: _pageController,
                        itemBuilder: (context, index) {
                          return Transform.scale(
                            scale: _calculateScale(index),
                            child: AthanTimeListViewItem(),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 130,),
                        Text(
                          'Next Pray - 12:50',
                          style: Styles.textStyle16.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 80,),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.volume_off, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
