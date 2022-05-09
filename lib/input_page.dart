import 'package:flutter/material.dart';
import 'results_page.dart';

import 'gender_selector.dart';
import 'height_selector.dart';
import 'weight_age_selector.dart';
import 'bottom_button.dart';
import 'calculator.dart';

class InputPage extends StatelessWidget {
  InputPage({Key? key}) : super(key: key);

  final HeightSelector _heightSelector = HeightSelector();
  final WeightAgeSelector _weightAgeSelector = WeightAgeSelector();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const GenderSelector(),
          _heightSelector,
          _weightAgeSelector,
          BottomButton(
            title: 'CALCULATE',
            onPressed: () {
              Calculator calculator = Calculator(
                weight: _weightAgeSelector.getWeight(),
                height: _heightSelector.getHeight(),
              );

              calculator.calculateBMI();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    result: calculator.getResult(),
                    bmi: calculator.getBMI(),
                    interpretation: calculator.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
