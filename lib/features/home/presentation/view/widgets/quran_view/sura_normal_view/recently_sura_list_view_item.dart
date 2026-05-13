import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/util/app_router.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/features/download/data/model/dawnlod_quran_model/download_quran_model.dart';

class RecentlySuraListviewItem extends StatelessWidget {
  const RecentlySuraListviewItem({super.key, required this.sura});

final DownloadQuranModel sura;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        GoRouter.of(context).push(AppRouter.kSuraContentView,extra:  sura);

        },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: .circular(16),
          color: kPrimaryColor,
        ),
        width: MediaQuery.of(context).size.width*.85,

        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              child: Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Text(
                      sura.englishName,
                      style: Styles.textStyle24.copyWith(
                        color: Color(0xff202020),
                      ),
                    ),
                    Text(
                      sura.name,
                      style: Styles.textStyle24.copyWith(
                        color: Color(0xff202020),
                      ),
                    ),
                    Text('112 Verses', style: Styles.textStyle14),
                  ],
                ),
              ),
            ),
            Spacer(),
            Image.asset('assets/photos/Rectangle 124.png'),
          ],
        ),
      ),
    );
  }
}
