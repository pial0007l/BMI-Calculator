import 'package:flutter/material.dart';

class ReusableGColumn extends StatelessWidget {
  final icon;
  final txt;
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
        )
      ],
    );
  }
}
