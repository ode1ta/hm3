import 'calculator.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen()
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  CalculatorScreenState createState() => CalculatorScreenState();

}