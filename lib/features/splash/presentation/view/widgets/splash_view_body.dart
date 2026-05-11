import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:islam/core/util/app_router.dart';
import 'package:islam/features/home/presentation/manger/quran_cubit/quran_cubit.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    _checkAndNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/photos/splash_background.png', fit: BoxFit.fill),
          Positioned.fill(
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
                Image.asset('assets/photos/islam.png'),
                Align(
                  alignment: .centerRight,
                  child: Image.asset('assets/photos/Shape-04 1.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Future<void> _checkAndNavigate() async {
    await Future.delayed(const Duration(seconds: 2));

    final cubit = context.read<QuranCubit>();
    final hasData = await cubit.hasCachedData();

    if (mounted) {
      if (hasData) {

        Future.delayed(Duration(seconds: 3), () {
          GoRouter.of(context).push(AppRouter.kHomeView);
        });
      } else {
        Future.delayed(Duration(seconds: 3), () {
          GoRouter.of(context).push(AppRouter.kDownloadView);
        });
      }
    }
  }

}
