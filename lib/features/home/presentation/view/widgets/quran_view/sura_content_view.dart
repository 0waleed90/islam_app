import 'package:flutter/material.dart';
import 'package:islam/features/download/data/model/dawnlod_quran_model/download_quran_model.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/sura_content_view/sura_content_view_body.dart';

 //the Body of this page is in quranView    >>  SuraContentView


class SuraContentView extends StatelessWidget {
  const SuraContentView({super.key, required this.sura});
final DownloadQuranModel sura;
  @override
  Widget build(BuildContext context) {
    return SuraContentViewBody(sura: sura,);
  }
}
