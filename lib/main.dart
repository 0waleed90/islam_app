import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:islam/core/util/app_router.dart';
import 'package:islam/core/util/service_locator.dart';
import 'package:islam/features/download/data/model/dawnlod_quran_model/download_quran_model.dart';
import 'package:islam/features/home/data/repo/home_repo_impl.dart';
import 'package:islam/features/home/presentation/manger/quran_cubit/quran_cubit.dart';

void main()async {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();


  Hive.registerAdapter(DownloadQuranModelAdapter());
  Hive.registerAdapter(SimpleAyahAdapter());

  // فتح الـ Box
  await Hive.openBox<DownloadQuranModel>('quran');

  runApp(const Islam());
}

class Islam extends StatelessWidget {
  const Islam({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>QuranCubit( getIt.get<HomeRepoImpl>())..LoadQuranData(),),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
