import 'package:go_router/go_router.dart';
import 'package:islam/features/spash/presentation/view/splash_view.dart';

abstract class AppRouter {


static  final GoRouter router=GoRouter(routes: [
    GoRoute(path: '/',builder: (context,state)=> SplashView()),



  ]);


}