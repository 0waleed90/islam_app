import 'package:flutter/material.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/core/util/widgets/top_item_quran_hadith.dart';
import 'package:islam/features/home/presentation/view/widgets/hadith_view/hadith_content_app_bar.dart';

class HadithContentView extends StatelessWidget {
  const HadithContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HadithContentAppBar(),
          TopItemQuranHadith(
            centerText: 'الحديث الاول',
            textStyle: Styles.textStyle24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: SizedBox(

              height: MediaQuery.of(context).size.height*.63,
              child: Text(
                'hgfgjghjhufuff fffffffffffff fffffffffff jjjjjjjj jjjjjjjjjj jjjjjjjjj jjjjjjjjj jjjjjjjj',
                style: Styles.textStyle20,
                textAlign: .center,
              ),
            ),
          ),

          Image.asset('assets/photos/bottom_quran_details.png'),
        ],
      ),
    );
  }
}
