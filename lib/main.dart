import 'package:flutter/material.dart';
import 'gender_selector.dart';
import 'height_selector.dart';
import 'weight_age_selector.dart';

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
        colorScheme: ColorScheme.light(
          primary: Color.fromARGB(255, 9, 13, 34),
          secondary: Color.fromARGB(255, 234, 20, 86),
          tertiary: Color.fromARGB(255, 50, 50, 70),
          surfaceVariant: Color.fromARGB(255, 18, 20, 40),
          surface: Color.fromARGB(255, 30, 31, 50),
          onSurface: Colors.white,
          onSurfaceVariant: Colors.white,
        ),
        textTheme: TextTheme(
          labelLarge: TextStyle(
            fontSize: 60.0,
            color: Colors.white,
          ),
          labelMedium: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        sliderTheme: SliderThemeData(
          thumbColor: Color.fromARGB(255, 234, 20, 86),
          activeTrackColor: Colors.white,
          overlayColor: Color.fromARGB(50, 234, 20, 86),
          inactiveTrackColor: Colors.grey[700],
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 30.0,
          ),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 9, 13, 34),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            GenderSelector(),
            HeightSelector(),
            WeightAgeSelector(),
          ],
        ),
      ),
    );
  }
}
