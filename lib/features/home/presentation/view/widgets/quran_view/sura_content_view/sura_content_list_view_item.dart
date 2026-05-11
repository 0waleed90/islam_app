import 'package:flutter/material.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/util/styles.dart';

class SuraContentListViewItem extends StatelessWidget {
  const SuraContentListViewItem({super.key, required this.ayasContent, required this.ayasCount});
final String ayasContent;
  final int ayasCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        textAlign: TextAlign.center,
        maxLines: null,

        readOnly: true,
        decoration: InputDecoration(
          hintText: '{$ayasCount}  $ayasContent',
          hintStyle: Styles.textStyle20,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
