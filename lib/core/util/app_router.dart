import 'package:go_router/go_router.dart';
import 'package:islam/features/intro/presentation/view/intro_view.dart';
import 'package:islam/features/spash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static final String kIntroView = '/IntroView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kIntroView, builder: (context, state) => IntroView()),
    ],
  );
}
