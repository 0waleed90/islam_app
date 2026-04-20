import 'package:flutter/material.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/recently_sura_list_view_item.dart';

class RecentlySuraListview extends StatelessWidget {
  const RecentlySuraListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: RecentlySuraListviewItem(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
