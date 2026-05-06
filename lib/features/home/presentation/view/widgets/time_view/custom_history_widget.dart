import 'package:flutter/material.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/util/styles.dart';

class CustomHistoryWidget extends StatelessWidget {
  const CustomHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width: 125,
          height: 90,
          decoration: BoxDecoration(
            color: Color(0xff856B3F),
            borderRadius: .only(topLeft: Radius.circular(12)),
          ),
          child: Center(
            child: Text(
              '16 jul \n2026',
              style: Styles.textStyle16.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 90,
          width: 160,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: .only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Center(
            child: Text(
              'Pray Time \n Tuesday',
              style: Styles.textStyle20.copyWith(
                color: Color(0xff856B3F),
              ),
            ),
          ),
        ),
        Container(
          height: 90,
          width: 125,
          color: Color(0xff856B3F),
          child: Center(
            child: Text(
              '16 Muh \n1447',
              style: Styles.textStyle16.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
