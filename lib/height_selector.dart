import 'package:flutter/material.dart';
import 'custom_card.dart';

class HeightSelector extends StatefulWidget {
  HeightSelector({Key? key}) : super(key: key);

  int _height = 180;
  int getHeight() => _height;

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomCard(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HEIGHT',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  widget._height.toString(),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  'cm',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            Slider(
              value: widget._height.toDouble(),
              onChanged: (double newHeight) {
                setState(() {
                  widget._height = newHeight.toInt();
                });
              },
              min: 120,
              max: 220,
            ),
          ],
        ),
      ),
    );
  }
}
