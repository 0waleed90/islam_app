import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/util/app_router.dart';

void main()async {
await Hive.initFlutter();
  runApp(const Islam());
}

class Islam extends StatelessWidget {
  const Islam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
