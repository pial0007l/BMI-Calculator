import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key key}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: card_color,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
  }
}