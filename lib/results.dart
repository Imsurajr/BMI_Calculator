import 'package:bmi_calculator/bottombutton.dart';
import 'package:bmi_calculator/container_boxes.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class result extends StatelessWidget {
  result(
      {required this.bmiResult,
      required this.message,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF090C22),
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: (Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your BMI Result-',
                style: kResultTexts,
              ),
            )),
          ),
          Expanded(
            flex: 5,
            child: Reused_widgets(
                kInactiveWidgetColor,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMIResult,
                    ),
                    Text(
                      message,
                      style: kMessageText,
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          ),
          SizedBox(height: 8),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              ButtonText: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
