import 'package:flutter/material.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/search_widgets/custom_search_text_field.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/search_widgets/search_result_list_view_item.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/sura_normal_view/suras_list_view_item.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .355,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: searchNotifier.value.length,
          itemBuilder: (context, index) {

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: SearchResultListViewItem(),
            );
          },
        ),
      ),
    );
  }
}
