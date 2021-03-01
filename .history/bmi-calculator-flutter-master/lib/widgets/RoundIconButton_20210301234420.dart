import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;

  RoundIconButton({this.icon})

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(height: 56.0,width: 56.0,),
    );
  }
}
