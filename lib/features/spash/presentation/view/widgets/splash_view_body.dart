import 'package:flutter/material.dart';
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(children: [
      Image.asset('assets/photos/splash_background.png',fit: BoxFit.fill,)
      
      
      
    ],),);
  }
}
