import 'package:bmi_calculator/constance.dart';
import 'package:bmi_calculator/widgets/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum BodyStatus {
  NORMAL,
  OVERWEIGHT,
  UNDERWEIGHT,
}

class ResultsPage extends StatelessWidget {
  double bmi = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Your Resusult',
            style: knumberStyle,
          ),
          Expanded(
            child: ReusableCard(
              colour: card_color,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    //**Status */
                    'OVERWEIGHT',
                    style: lableTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[200],
                    ),
                  ),
                  Text(
                    //**BMI COUNT */
                    '26.7',
                    style: knumberStyle.copyWith(
                      fontSize: 120.0,
                    ),
                  ),
                  Text(
                    //**Coments */
                    'OVERWEIGHT',
                    style: lableTextStyle.copyWith(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              // ************ Calculate Button **********
              alignment: Alignment.center,
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
              child: Text(
                'RE-CALCULATE',
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
