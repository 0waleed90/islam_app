import 'package:flutter/material.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/sura_normal_view/suras_list_view_item.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [SizedBox(height: 30), SurasListViewItem()]);
  }
}
