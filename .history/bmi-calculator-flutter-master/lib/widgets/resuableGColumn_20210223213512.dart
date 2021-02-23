import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableGColumn extends StatelessWidget {
  final icon;
  final txt,
  const ReusableGColumn({@required this.icon, @required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'MALE',
        )
      ],
    );
  }
}
