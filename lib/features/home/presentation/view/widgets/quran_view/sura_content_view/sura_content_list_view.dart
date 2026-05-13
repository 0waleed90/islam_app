import 'package:flutter/material.dart';
import 'package:islam/features/download/data/model/dawnlod_quran_model/download_quran_model.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/sura_content_view/sura_content_list_view_item.dart';

class SuraContentListView extends StatelessWidget {
  const SuraContentListView({super.key, required this.sura, });
  final DownloadQuranModel sura;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sura.ayahs.length,
      itemBuilder: (context, index) {
        return  SuraContentListViewItem(ayasContent: sura.ayahs[index].text, ayasCount: sura.ayahs[index].numberInSurah,);
      },
    );
  }
}
