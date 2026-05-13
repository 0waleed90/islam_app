import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islam/core/util/app_router.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/features/download/data/model/dawnlod_quran_model/download_quran_model.dart';

class SurasListViewItem extends StatelessWidget {
  const SurasListViewItem({super.key, required this.sura});
  final DownloadQuranModel? sura;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kSuraContentView,extra: sura);
      },
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: .center,
                children: [
                   Image.asset('assets/photos/Vector.png'),
                  Text(sura!.number.toString(), style: Styles.textStyle16),
                ],
              ),
              const SizedBox(width: 25),
              Column(
                children: [
                  Text(
                    sura!.englishName,
                    style: Styles.textStyle20.copyWith(color: Colors.white),
                  ),
                  Text(
                    '7 Verses',
                    style: Styles.textStyle14.copyWith(color: Colors.white),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                sura!.name,
                style: Styles.textStyle20.copyWith(color: Colors.white),
              ),
              const SizedBox(width: 20,)
            ],
          ),
          const Divider(color: Colors.white, indent: 45, endIndent: 45),
        ],
      ),
    );
  }
}
