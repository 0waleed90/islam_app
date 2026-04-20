import 'package:flutter/material.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/suras_list_view_item.dart';

class SurasListView extends StatelessWidget {
  const SurasListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .355,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: SurasListViewItem(),
            );
          },
        ),
      ),
    );
  }
}
