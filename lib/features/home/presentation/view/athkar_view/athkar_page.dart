import 'package:flutter/material.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/core/util/widgets/logo_image.dart';

class AthkarPage extends StatelessWidget {
  const AthkarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/photos/athkar_Background (1).png',
            fit: BoxFit.fill,
          ),
          Align(alignment: .center,
            child: Column(
              children: [
                const SizedBox(height: 20,),
                LogoImage(),
                Text(
                  'سبح اسم ربك الأعلى',
                  style:Styles.textStyle36
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.26,),
                Text(
                  'سبحان الله',
                  style:Styles.textStyle36
                ),
                const SizedBox(height: 15,),
                Text('30', style:Styles.textStyle36)


              ],
            ),
          ),

          Align(
              alignment: .xy(0.01, 0.68),
              child: Image.asset('assets/photos/Sebha (1).png')),

        ],
      ),
    );
  }
}
