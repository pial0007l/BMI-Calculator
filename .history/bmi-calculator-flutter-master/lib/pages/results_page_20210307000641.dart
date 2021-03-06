import 'package:bmi_calculator/constance.dart';
import 'package:bmi_calculator/widgets/bottomButton.dart';
import 'package:bmi_calculator/widgets/reusableCard.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

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
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Resusult',
                style: knumberStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: card_color,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    //**Status */
                    resultText,
                    style: lableTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[200],
                    ),
                  ),
                  Text(
                    //**BMI COUNT */
                    bmiResult,
                    textAlign: TextAlign.center,
                    style: knumberStyle.copyWith(
                      fontSize: 120.0,
                    ),
                  ),
                  Text(
                    //**Coments */

                    interpretation,
                    style: lableTextStyle.copyWith(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
