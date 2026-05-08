import 'package:flutter/material.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/features/home/data/repo/home_repo_impl.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/recently_sura_list_view.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/suras_list_view.dart';

class NormalContent extends StatelessWidget {
   NormalContent({super.key});
final HomeRepoImpl homeRepoImpl =HomeRepoImpl();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Align(
          alignment: .bottomLeft,
          child: Text(
            'Most Recently',
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
        ),
        RecentlySuraListview(suraName: '',),
        Align(
          alignment: .centerLeft,
          child: Text(
            'Suras List',
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
        ),
        SizedBox(height: 10),
        SurasListView(),
      ],
    );
  }
}
