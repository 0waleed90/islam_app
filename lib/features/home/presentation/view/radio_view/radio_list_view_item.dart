import 'package:flutter/material.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/util/styles.dart';

class RadioListViewItem extends StatelessWidget {
  const RadioListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: .circular(16),
          color: kPrimaryColor,
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              'ibrahim al-akdar',
              style: Styles.textStyle20.copyWith(color: Colors.black),
            ),

            Stack(
              children: [
                Image.asset(
                  'assets/photos/bottom_quran_details.png',
                  color: Colors.black,
                ),

                Positioned.fill(
                  child: Row(
                    mainAxisAlignment: .center,

                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.black,
                          size: 33,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: 33,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.volume_up_sharp,
                          color: Colors.black,
                          size: 33,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
