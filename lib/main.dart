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
        colorScheme: const ColorScheme.light(
          primary: Color.fromARGB(255, 9, 13, 34),
          secondary: Color.fromARGB(255, 234, 20, 86),
          onSecondary: Colors.white,
          tertiary: Color.fromARGB(255, 50, 50, 70),
          surfaceVariant: Color.fromARGB(255, 18, 20, 40),
          surface: Color.fromARGB(255, 30, 31, 50),
          onSurface: Colors.white,
          onSurfaceVariant: Colors.white,
        ),
        textTheme: Typography.whiteMountainView,
        sliderTheme: SliderThemeData(
          thumbColor: const Color.fromARGB(255, 234, 20, 86),
          activeTrackColor: Colors.white,
          overlayColor: const Color.fromARGB(50, 234, 20, 86),
          inactiveTrackColor: Colors.grey[700],
          thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
          overlayShape: const RoundSliderOverlayShape(
            overlayRadius: 30.0,
          ),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 9, 13, 34),
      ),
      home: InputPage(),
    );
  }
}
