import 'package:flutter/material.dart';
const card_color = Color(0xFF1D1E33);

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