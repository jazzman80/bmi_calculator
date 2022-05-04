import 'package:flutter/material.dart';
import 'gender_selector.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        children: [
          GenderSelector(),
        ],
      ),
    );
  }
}
