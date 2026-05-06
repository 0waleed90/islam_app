import 'package:flutter/material.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/util/styles.dart';

class ChangeRadioButtons extends StatelessWidget {
  const ChangeRadioButtons({
    super.key,
    required this.selectedButtonIndex,
    required this.selectedButton,
  });
  final int selectedButtonIndex;
  final Function(int) selectedButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(185, 40),

            backgroundColor: selectedButtonIndex == 0 ? kPrimaryColor : Colors.transparent,
            shape: selectedButtonIndex == 0
                ?  RoundedRectangleBorder(borderRadius: .circular(12))
                : const RoundedRectangleBorder(borderRadius: .only(topLeft:Radius.circular(12),bottomLeft:Radius.circular(12),


            )),
          ),
          onPressed: () {
            selectedButton(0);
          },
          child: Text(
            'Radio',
            style: selectedButtonIndex == 0
                ? Styles.textStyle16.copyWith(color: Colors.black)
                :Styles.textStyle16.copyWith(color: Colors.white),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(185, 40),

            backgroundColor: selectedButtonIndex == 1 ? kPrimaryColor :  Colors.transparent,
            shape: selectedButtonIndex == 1
                ?  RoundedRectangleBorder(borderRadius: .circular(8))
                : const RoundedRectangleBorder(borderRadius:  .only(topRight:Radius.circular(12),bottomRight:Radius.circular(12),


            )),
          ),
          onPressed: () {
            selectedButton(1);
          },
          child:  Text(
            'Radio',
            style: selectedButtonIndex == 1
                ? Styles.textStyle16.copyWith(color: Colors.black)
                :Styles.textStyle16.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
