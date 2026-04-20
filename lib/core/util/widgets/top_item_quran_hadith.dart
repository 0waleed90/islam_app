import 'package:flutter/material.dart';
class TopItemQuranHadith extends StatelessWidget {
  const TopItemQuranHadith({super.key, required this.centerText, required this.textStyle, this.imageColor, });
final String centerText;
final TextStyle textStyle;
final Color? imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: .spaceBetween,
      children: [
        Image.asset('assets/photos/top_left_quran_details.png',color: imageColor,),
        Text(centerText, style: textStyle),

        Image.asset('assets/photos/top_right_quran_details.png',color: imageColor,),
      ],
    );
  }
}
