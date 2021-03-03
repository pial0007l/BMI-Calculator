import '../bmi_calculator/pages/results_page.dart';
import 'package:flutter/material.dart';
import './pages/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      home: InputPage(),
      routes: {
        '/': (context) => InputPage(),
        '/resiltsPage': (context) => ResultsPage(),
      },
    );
  }
}
