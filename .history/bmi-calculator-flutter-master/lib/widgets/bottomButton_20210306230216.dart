import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constance.dart';

class BottomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/resiltsPage');
      },
      child: Container(
        // ************ Calculate Button **********
        alignment: Alignment.center,
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Text(
          'CALCULATE',
          style: GoogleFonts.openSans(
            fontSize: 30.0,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
