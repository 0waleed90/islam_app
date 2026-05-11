import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/core/util/widgets/custom_error_widget.dart';
import 'package:islam/features/home/presentation/manger/quran_cubit/quran_cubit.dart';
import 'package:islam/features/home/presentation/manger/quran_cubit/quran_state.dart';
import 'package:islam/features/intro/presentation/view/intro_view.dart';

class DownloadViewBody extends StatelessWidget {
  const DownloadViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<QuranCubit, QuranState>(
        builder: (context, state) {
          if (state is QuranLoaded) {
            return IntroView();
          } else if (state is DquranError) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return  Stack(
              children: [
                Image.asset(
                  'assets/photos/splash_background.png',
                  fit: BoxFit.fill,
                ),
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

                                  child: Image.asset(
                                    'assets/photos/Mosque-01 1.png',
                                  ),
                                ),

                                Align(
                                  alignment: .topLeft,
                                  child: Image.asset(
                                    'assets/photos/Shape-07 1.png',
                                  ),
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
                      Text('يتم تحميل القرءان الكريم الرجاء الانتظار',style: Styles.textStyle20,),
                      Align(
                        alignment: .centerRight,
                        child: Image.asset('assets/photos/Shape-04 1.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ) ;
          }
        },
      ),
    );
  }
}
