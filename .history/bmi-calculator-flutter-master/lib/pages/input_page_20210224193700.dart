import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/resuableGColumn.dart';
import '../widgets/reusableCard.dart';

const bottomContainerHeight = 80.0;
const card_color = Color(0xFF1D1E33);
const inactiveCordColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCordColor;
  Color femaleCardColor = inactiveCordColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCordColor) {
        maleCardColor = card_color;
      } else {
        maleCardColor = inactiveCordColor;
      }
    } else if (gender == 2) {
      if (femaleCardColor == inactiveCordColor) {
        femaleCardColor = card_color;
      } else {
        femaleCardColor = inactiveCordColor;
      }
    }
  }

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
                      updateColor(1);
                      //print('Working');
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColor,
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
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColor,
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
