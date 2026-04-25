import 'package:flutter/material.dart';
import 'package:islam/core/util/widgets/logo_image.dart';
import 'package:islam/features/home/presentation/view/radio_view/change_radio_buttons.dart';
import 'package:islam/features/home/presentation/view/radio_view/radio_list_view.dart';
import 'package:islam/features/home/presentation/view/radio_view/radio_list_view_item.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int _selectedButtonIndex = 0;

  void selectedButton(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/photos/Radio_Background.png', fit: BoxFit.fill),
          Column(
            children: [
              const SizedBox(height: 20),

              const LogoImage(),
              ChangeRadioButtons(
                selectedButtonIndex: _selectedButtonIndex,
                selectedButton: selectedButton,
              ),

              Container(
                  height: MediaQuery.of(context).size.height*.6,
                  child: const RadioListView()),
            ],
          ),
        ],
      ),
    );
  }
}
