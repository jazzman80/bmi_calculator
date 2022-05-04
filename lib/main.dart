import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: Color.fromARGB(255, 235, 21, 85),
          surface: Color.fromARGB(255, 10, 13, 34),
          background: Color.fromARGB(255, 18, 20, 40),
          surfaceVariant: Color.fromARGB(255, 29, 31, 51),
        ),
      ),
      home: InputPage(),
    );
  }
}
