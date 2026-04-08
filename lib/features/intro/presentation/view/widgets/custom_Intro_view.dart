import 'package:flutter/material.dart';
import 'package:islam/core/util/styles.dart';
class CustomIntroView extends StatelessWidget {
  const CustomIntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

        children: [
          Stack(
            alignment: .xy(0,0.2),
            children: [
            Image.asset('assets/photos/Mosque-01 1.png'),
            Image.asset('assets/photos/islam.png'),
          ],),
          Image.asset('assets/photos/radio 1.png',),
          Text('Holy Qyran Radio',style: Styles.textStyle24,),
           SizedBox(

               width: MediaQuery.of(context).size.width*0.8,
               child: Text('you can listen to the holy quran radio through th application for free and easly',style: Styles.textStyle20,textAlign: .center,))
        ],
      ),
    );
  }
}
