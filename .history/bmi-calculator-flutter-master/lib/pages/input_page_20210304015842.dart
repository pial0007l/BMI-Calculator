import 'package:bmi_calculator/widgets/RoundIconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constance.dart';
import '../widgets/resuableGColumn.dart';
import '../widgets/reusableCard.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  double height = 0.0;
  int weight = 10;
  int age = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              // MALE Icon
              child: Row(
            children: [
              Expanded(
                // ************** MALE icon Card ******
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectGender = Gender.male;
                    });
                  },
                  colour: selectGender == Gender.male
                      ? card_color
                      : inactiveCordColor,
                  cardChild: ReusableGColumn(
                    icon: FontAwesomeIcons.mars,
                    txt: 'MALE',
                  ),
                ),
              ),
              Expanded(
                // ************* Female icon Card *********
                // Female Icon
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectGender = Gender.female;
                    });
                  },
                  colour: selectGender == Gender.female
                      ? card_color
                      : inactiveCordColor,
                  cardChild: ReusableGColumn(
                    icon: FontAwesomeIcons.venus,
                    txt: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            // *****************Slider ********************
            child: ReusableCard(
              colour: card_color,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEiGHT',
                    style: lableTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toString(),
                        style: knumberStyle,
                      ), // Height number text
                      Text(
                        ' cm',
                        style: lableTextStyle.copyWith(color: Colors.white),
                      ), // height cm text
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTickMarkColor: Colors.white,
                      activeTrackColor: Color(0xFFEB1555),
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                        value: height,
                        max: 220.0,
                        min: 0.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height =
                                double.parse((newValue).toStringAsFixed(1));
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              // *********** Weight Card **********
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: card_color,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: lableTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: knumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                if (weight > 0) {
                                  weight--;
                                }
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: card_color,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: lableTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: knumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                if (age > 0) {
                                  age--;
                                }
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
          GestureDetector(
            onTap: Navigator.pushNamed('/resultsPage');
            child: Container(
              // ************ Calculate Button **********
              alignment: Alignment.center,
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
              child: Text(
                'CALCULATE',
                style: GoogleFonts.openSans(
                  fontSize: 30.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
