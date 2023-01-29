import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container_boxes.dart';
import 'Icons.dart';
import 'constants.dart';
import 'results.dart';
import 'bottombutton.dart';
import 'answercalculator.dart';

enum Gender {
  male,
  female,
}

int height = 180;
int weight = 65;
int age = 18;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

int num = 0;

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  Color maleCardColor = kWidgetColor;
  Color femaleCardColor = kInactiveWidgetColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF090C22),
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reused_widgets(
                    (selectedGender == Gender.male
                        ? kWidgetColor
                        : kInactiveWidgetColor),
                    gender_cards(
                      reqIcon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                    () {
                      Future.delayed(Duration.zero, () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Reused_widgets(
                    (selectedGender == Gender.female
                        ? kWidgetColor
                        : kInactiveWidgetColor),
                    gender_cards(
                      reqIcon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                    () {
                      Future.delayed(Duration.zero, () {
                        //TODO: see this future thing
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reused_widgets(
              kInactiveWidgetColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xFFEB1555),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newHeight) {
                        setState(() => height = newHeight.toInt());
                      },
                      inactiveColor: Color(0xFF8D8E98),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reused_widgets(
                      kInactiveWidgetColor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(Icons.remove, () {
                                setState(() {
                                  weight--;
                                });
                              }),
                              SizedBox(
                                width: 10,
                              ),
                              RoundButton(Icons.add, () {
                                setState(() {
                                  weight++;
                                });
                              }),
                            ],
                          ),
                        ],
                      )),
                ),
                Expanded(
                  child: Reused_widgets(
                      kInactiveWidgetColor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(Icons.remove, () {
                                setState(() {
                                  age--;
                                });
                              }),
                              SizedBox(width: 10),
                              RoundButton(Icons.add, () {
                                setState(() {
                                  age++;
                                });
                              }),
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          BottomButton(
            ButtonText: 'CALCULATE',
            onTap: () {
              AnswerCalculator ans =
                  AnswerCalculator(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => result(
                          bmiResult: ans.answer(),
                          resultText: ans.getResult(),
                          message: ans.message(),
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  RoundButton(this.reqIcon, this.onPressed);
  final IconData reqIcon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(reqIcon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
