import 'package:flutter/material.dart';

const lableTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class ReusableGColumn extends StatelessWidget {
  final IconData icon;
  final String txt;
  const ReusableGColumn({@required this.icon, @required this.txt});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          txt,
          style: lableTextStyle,
        )
      ],
    );
  }
}
