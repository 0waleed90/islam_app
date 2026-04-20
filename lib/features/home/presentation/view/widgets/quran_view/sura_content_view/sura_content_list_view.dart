import 'package:flutter/material.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/sura_content_view/sura_content_list_view_item.dart';

class SuraContentListView extends StatelessWidget {
  const SuraContentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return SuraContentListViewItem();
      },
    );
  }
}
