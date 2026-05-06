import 'package:flutter/material.dart';
import 'package:islam/features/home/presentation/view/widgets/time_view/athan_time_list_view_item.dart';

class AthanTimeListView extends StatelessWidget {
  const AthanTimeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index)=>AthanTimeListViewItem());
  }
}
