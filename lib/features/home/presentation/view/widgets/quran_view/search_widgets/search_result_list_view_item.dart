import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islam/core/util/app_router.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/search_widgets/custom_search_text_field.dart';

class SearchResultListViewItem extends StatelessWidget {
  const SearchResultListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kSuraContentView,extra: searchNotifier.value);
      },
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: .center,
                children: [
                  Image.asset('assets/photos/Vector.png'),
                  Text('1', style: Styles.textStyle24),
                ],
              ),
              SizedBox(width: 25),
              Column(
                children: [
                  Text(
                    'Al-Fatiha',
                    style: Styles.textStyle20.copyWith(color: Colors.white),
                  ),
                  Text(
                    '7 Verses',
                    style: Styles.textStyle14.copyWith(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .4),
              Text(
                "الفاتحة",
                style: Styles.textStyle20.copyWith(color: Colors.white),
              ),
            ],
          ),
          Divider(color: Colors.white, indent: 45, endIndent: 45),
        ],
      ),
    );
  }
}
