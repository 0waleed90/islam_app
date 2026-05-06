import 'package:flutter/material.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/util/styles.dart';

class AthanTimeListViewItem extends StatelessWidget {
  const AthanTimeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: .circular(16),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.black, kPrimaryColor],
        ),
      ),
      child: Column(
        children: [
          Text(
            'العصر',
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
          Text('04:38', style: TextStyle(fontSize: 32)),
          Text('PM', style: Styles.textStyle16.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
