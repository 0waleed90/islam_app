import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/util/app_router.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/core/util/widgets/top_item_quran_hadith.dart';

class HadithListViewItem extends StatelessWidget {
  const HadithListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){GoRouter.of(context).push(AppRouter.kHadithContentView);},
      child: Container(
      decoration:BoxDecoration(borderRadius: .circular(16), color: kPrimaryColor,) ,

        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(

            children: [
              TopItemQuranHadith(
                centerText: 'الحديث الأول',
                textStyle: Styles.textStyle24.copyWith(color: Colors.black),
                imageColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
