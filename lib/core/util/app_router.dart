import 'package:go_router/go_router.dart';
import 'package:islam/features/download/data/model/dawnlod_quran_model/download_quran_model.dart';
import 'package:islam/features/download/presentation/view/download_view.dart';
import 'package:islam/features/home/presentation/view/home_view.dart';
import 'package:islam/features/home/presentation/view/widgets/hadith_view/hadith_content_view.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/sura_content_view.dart';
import 'package:islam/features/intro/presentation/view/intro_view.dart';
import 'package:islam/features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static final String kIntroView = '/IntroView';
  static final String kHomeView = '/HomeView';
  static final String kSearchView = '/SearchView';
  static final String kSuraContentView = '/SuraContentView';
  static final String kHadithContentView = '/HadithContentView';
  static final String kDownloadView = '/DownLoadView';

  static final GoRouter router = GoRouter(

    routes: [
      GoRoute(path: kDownloadView,builder: (context,state)=>DownloadView()),
      GoRoute(
        path: kHadithContentView,
        builder: (context, state) => HadithContentView(),
      ),

      GoRoute(
        path: kSuraContentView,
        builder: (context, state) {final surah = state.extra as DownloadQuranModel;
        return SuraContentView( sura: surah,);},


      ),
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kIntroView, builder: (context, state) => IntroView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
    ],
  );
}
