import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/resuableGColumn.dart';
import '../widgets/reusableCard.dart';

const bottomContainerHeight = 80.0;
const card_color = Color(0xFF1D1E33);
const inactiveCordColor = Color(0xFF111328);

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

  // Color maleCardColor = inactiveCordColor;
  // Color femaleCardColor = inactiveCordColor;

  // void updateColor(Gender gender) {
  //   if (gender == Gender.male) {
  //     if (maleCardColor == inactiveCordColor) {
  //       maleCardColor = card_color;
  //       femaleCardColor = inactiveCordColor;
  //     }
  //   } else if (gender == Gender.female) {
  //     if (femaleCardColor == inactiveCordColor) {
  //       femaleCardColor = card_color;
  //       maleCardColor = inactiveCordColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              // MALE Icon
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectGender = Gender.male;
                      //print('Working');
                    });
                  },
                  child: ReusableCard(
                    colour: selectGender == Gender.male
                        ? card_color
                        : inactiveCordColor,
                    cardChild: ReusableGColumn(
                      icon: FontAwesomeIcons.mars,
                      txt: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                // Female Icon
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    colour: selectGender == Gender.female
                        ? card_color
                        : inactiveCordColor,
                    cardChild: ReusableGColumn(
                      icon: FontAwesomeIcons.venus,
                      txt: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: card_color,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: card_color,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: card_color,
                ),
              ),
            ],
          )),
          Container(
            alignment: Alignment.center,
            color: Color(0xFFEB1555),
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
        ],
      ),
    );
  }
}
