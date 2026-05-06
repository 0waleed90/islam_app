import 'package:flutter/material.dart';
import 'package:islam/core/util/app_router.dart';

void main()async {

  runApp(const Islam());
}

class Islam extends StatelessWidget {
  const Islam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: .dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
