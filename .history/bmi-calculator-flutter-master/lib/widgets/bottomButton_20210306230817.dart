import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constance.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;
  BottomButton({@required this.onTap, @required this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // ************ Calculate Button **********
        alignment: Alignment.center,
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Text(
          buttonTitle,
          style: GoogleFonts.openSans(
            fontSize: 30.0,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
