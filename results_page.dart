import 'package:bmi_calculator/constant_file.dart';
import 'package:bmi_calculator/widget_file.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String bmiCalc;
  final String bmiMeaning;
  ResultsPage({this.bmiMeaning, this.bmiCalc, this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 5),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTitleResult),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kActiveBoxColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('$bmiResult', style: kResultsBigTextStyle),
                  Text('$bmiCalc', style: kResultsNumberTextStyle),
                  Center(
                      child: Text(
                    '$bmiMeaning',
                    style: kResultsSmallTextStyle,
                    textAlign: TextAlign.center,
                  )),
                ],
              ),
            ),
          ),
          bottomButton(
            text: 'CALCULATE AGAIN',
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
