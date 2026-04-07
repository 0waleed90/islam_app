import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/photos/splash_background.png', fit: BoxFit.fill),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: .end,
                  crossAxisAlignment: .start,

                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .end,

                        children: [
                          SafeArea(
                            bottom: false,

                            child: Image.asset('assets/photos/Mosque-01 1.png'),
                          ),

                          Align(
                            alignment: .topLeft,
                            child: Image.asset('assets/photos/Shape-07 1.png'),
                          ),
                        ],
                      ),
                    ),

                    Image.asset(
                      'assets/photos/Glow.png',
                      width: 70,
                      height: 300,
                    ),
                  ],
                ),
                Image.asset('assets/photos/OBJECTS.png'),
                Image.asset('assets/photos/Islami.png'),
                Align(
                  alignment: .centerRight,
                  child: Image.asset('assets/photos/Shape-04 1.png'),
                ),

                Text(
                  "Programming py waleed Al-Maksour",
                  style: TextStyle(
                    fontWeight: .w900,
                    fontSize: 20,
                    color: Colors.white10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Image.asset('assets/photos/Glow.png', width: 80),
// Image.asset('assets/photos/Shape-07 1.png'),
