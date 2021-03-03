import 'package:bmi_calculator/constance.dart';
import 'package:bmi_calculator/widgets/reusableCard.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key key}) : super(key: key);

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
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    //**BMI COUNT */
                    '26.7',
                    style: knumberStyle.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
