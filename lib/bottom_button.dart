import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 80.0,
      //minWidth: double.infinity,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      color: Theme.of(context).colorScheme.secondary,
      onPressed: onPressed,
    );
  }
}
