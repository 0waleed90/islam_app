import 'package:flutter/material.dart';
import 'package:islam/core/util/widgets/logo_image.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/search_widgets/custom_search_text_field.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/search_widgets/search_results.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/sura_normal_view/normal_content.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  final FocusNode _searchFocusNode = FocusNode();
  bool _isSearching = false;
  @override
  void initState() {
    _searchFocusNode.addListener(() {
      setState(() {
        _isSearching = _searchFocusNode.hasFocus;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/photos/home_Background.png', fit: BoxFit.fill),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: LogoImage(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child:CustomSearchTextField(searchFocusNode: _searchFocusNode,)
              ),
              _isSearching ? SearchResults() : NormalContent(),
            ],
          ),
        ),
      ],
    );
  }
}
