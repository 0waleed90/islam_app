import 'package:flutter/material.dart';
import 'package:islam/features/home/presentation/view/radio_view/radio_list_view_item.dart';

class RadioListView extends StatelessWidget {
  const RadioListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return RadioListViewItem();
      },
    );
  }
}
