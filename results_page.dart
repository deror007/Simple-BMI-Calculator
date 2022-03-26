import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BMIbuttons.dart';

class ResultsPage extends StatelessWidget {
  final String bmiLevel;
  final String bmiResult;
  final String bmiInterpretation;
  ResultsPage(
      {@required this.bmiLevel,
      @required this.bmiResult,
      @required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Your Result',
                  style:
                      (TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold))),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiLevel,
                    style: TextStyle(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0),
                  ),
                  SizedBox(height: 50),
                  Text(
                    bmiResult,
                    style: kResultNumberStyle,
                  ),
                  SizedBox(height: 50),
                  Text(
                    bmiInterpretation,
                    textAlign: TextAlign.center,
                    style: kResultTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}
