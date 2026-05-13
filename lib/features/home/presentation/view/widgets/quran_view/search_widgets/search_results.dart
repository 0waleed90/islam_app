import 'package:flutter/material.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/search_widgets/search_result_list_view.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children:const [SizedBox(height: 30),SearchResultListView()]);
  }
}
