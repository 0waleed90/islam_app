import 'package:flutter/material.dart';
import 'package:flutter_openmoji/flutter_openmoji.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/features/home/presentation/view/widgets/athkar_page.dart';
import 'package:islam/features/home/presentation/view/widgets/hadith_view/hadith_page.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/quran_page.dart';
import 'package:islam/features/home/presentation/view/widgets/radio_page.dart';
import 'package:islam/features/home/presentation/view/widgets/time_page.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int selectedIndex = 0;

  void onItemTaped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const QuranPage(),
    const HadithPage(),
    const AthkarPage(),
    const RadioPage(),
    const TimePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        backgroundColor: kPrimaryColor,
        onDestinationSelected: onItemTaped,
        indicatorColor: Color(0xff6F5F45),
        destinations: [
          NavigationDestination(
            selectedIcon: FaIcon(
              FontAwesomeIcons.bookQuran,
              color: Colors.white,
            ),
            icon: FaIcon(FontAwesomeIcons.bookQuran, color: Colors.black),
            label: 'Qrran',
          ),
          NavigationDestination(
            selectedIcon: FaIcon(
              FontAwesomeIcons.bookOpen,
              color: Colors.white,
            ),
            icon: FaIcon(FontAwesomeIcons.bookOpen, color: Colors.black),
            label: 'Hadith',
          ),
          NavigationDestination(
            selectedIcon: Icon(OpenmojiIcons.prayer_beads, color: Colors.white),
            icon: Icon(OpenmojiIcons.prayer_beads, color: Colors.black),
            label: 'أذكار',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.radio, color: Colors.white),
            icon: Icon(Icons.radio, color: Colors.black),
            label: 'Radio',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.analytics, color: Colors.white),
            icon: Icon(Icons.analytics, color: Colors.black),
            label: 'Time',
          ),
        ],
      ),
      body: _pages[selectedIndex],
    );
  }
}
