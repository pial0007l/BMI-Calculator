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
                children: [
                  Text(
                    'HEiGHT',
                    style: lableTextStyle,
                  ),
                  Row(
                    children: [
                      Text(), // Height number text
                      Text(
                        'cm',
                        style: lableTextStyle,
                      ), // height cm text
                    ],
                  )
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
        ],
      ),
    );
  }
}
