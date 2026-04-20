import 'package:flutter/material.dart';
import 'package:islam/features/home/presentation/view/widgets/hadith_view/hadith_list_view_item.dart';
class HadithListView extends StatelessWidget {
  const HadithListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 300,
      child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal ,
          itemBuilder: (context,state){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: HadithListViewItem(),
        );

      }),
    );
  }
}
