import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islam/core/constants.dart';
import 'package:islam/core/util/styles.dart';
import 'package:islam/features/home/presentation/manger/quran_cubit/quran_cubit.dart';
import 'package:islam/features/home/presentation/manger/quran_cubit/quran_state.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.searchFocusNode});
  final FocusNode searchFocusNode;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranCubit, QuranState>(
      builder: (context, state) {
        if (state is QuranLoaded) {
          final List<String> surahNames = state.sura
              .map((surah) => surah.name)
              .toList();

          return ValueListenableBuilder(

            valueListenable: searchNotifier,
            builder: (context, searchResults, child) {
              return TextField(
                focusNode: searchFocusNode,
                decoration: InputDecoration(
                  prefixIcon: const Padding(
                    padding:  EdgeInsets.only(left: 14, top: 10),
                    child: FaIcon(
                      FontAwesomeIcons.bookQuran,
                      size: 28,
                      color: kPrimaryColor,
                    ),
                  ),
                  hintText: 'Sura Name',
                  hintStyle: Styles.textStyle16.copyWith(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: kPrimaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: kPrimaryColor),
                  ),
                ),
                onSubmitted: (value) {
                  if (value.isEmpty) {
                    searchNotifier.value=const [];
                  } else {
                    final results = surahNames.where((name) {
                      return name.contains(value);
                    }).toList();

                    searchNotifier.value = results;
                  }
                },
              );
            },
          );
        } else {
          return Text('');
        }
      },
    );
  }
}

final ValueNotifier<List<String>> searchNotifier = ValueNotifier([]);
