import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam/features/download/data/model/dawnlod_quran_model/download_quran_model.dart';
import 'package:islam/features/home/presentation/manger/quran_cubit/quran_cubit.dart';
import 'package:islam/features/home/presentation/manger/quran_cubit/quran_state.dart';
import 'package:islam/features/home/presentation/view/widgets/quran_view/sura_normal_view/suras_list_view_item.dart';

class SurasListView extends StatelessWidget {
  const SurasListView({super.key, });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranCubit,QuranState>(
      builder: (context, state) {
        if(state is QuranLoaded){
        return Align(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .355,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                final sura = state.sura[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: SurasListViewItem(sura: sura,),
                );
              },
            ),
          ),
        );}else{return Text('');}
      },
    );
  }
}
