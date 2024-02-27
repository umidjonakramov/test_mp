import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../settings/settings_page.dart';

class LanguageSettings extends StatefulWidget {
  const LanguageSettings({super.key});

  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sozlamalar',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        leading: Image.asset('assets/arrowback.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ItemSettings(
                'assets/uzbekistan.png',
                Text(
                  'O`zbek',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                CheckboxExample()
            ),
            ItemSettings(
                'assets/russia.png',
                Text(
                  'Русскый',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                CheckboxExample()),
            ItemSettings(
                'assets/english.png',
                Text(
                  'English',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                CheckboxExample(),

            )
          ]
        ),
      ),
    );
  }
}


class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.blueAccent;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}


