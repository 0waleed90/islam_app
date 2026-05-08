import 'package:flutter/material.dart';
import 'package:islam/core/util/api_service/quran_api_service.dart';
import 'package:islam/features/home/data/repo/home_repo_impl.dart';
import 'package:islam/features/home/presentation/view/home_view.dart';

class DawnloadQuranViewBody extends StatefulWidget {
  const DawnloadQuranViewBody({super.key});

  @override
  State<DawnloadQuranViewBody> createState() => _DawnloadQuranViewBodyState();
}

class _DawnloadQuranViewBodyState extends State<DawnloadQuranViewBody> {
  late Future<void> _loadingFuture;
  String _loadingMessage = 'جاري تحميل القرآن الكريم...';

  @override
  void initState() {
    super.initState();
    _loadingFuture = HomeRepoImpl().downloadAndSaveQuran();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _loadingFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // ✅ صفحة التحميل
          return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green[900]!, Colors.green[700]!],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                    SizedBox(height: 30),
                    Text(
                      _loadingMessage,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'يرجى الانتظار...',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          // ❌ خطأ
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error, size: 60, color: Colors.red),
                  SizedBox(height: 20),
                  Text(
                    'حدث خطأ أثناء التحميل',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '${snapshot.error}',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => setState(() {
                      _loadingFuture = HomeRepoImpl().downloadAndSaveQuran();
                    }),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      'إعادة محاولة',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          // ✅ انتهى التحميل، اذهب للصفحة الرئيسية
          return HomeView();
        }
      },
    );
  }
}
