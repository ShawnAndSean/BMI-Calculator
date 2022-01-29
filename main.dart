
import 'package:bmi_calculator/constant_file.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          trackHeight: 10,
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
          thumbColor: Colors.blue,
          overlayColor: Color(0x2996F3FF),
          activeTrackColor:Colors.blue,
          inactiveTrackColor: kInactiveBoxColor,
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(primary: Color(0xFF0A0E21)),
      ),
      home: InputPage(),
    );
  }
}

