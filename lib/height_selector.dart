import 'package:flutter/material.dart';
import 'custom_card.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({Key? key}) : super(key: key);

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  int _height = 180;

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
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  _height.toString(),
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  'cm',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            Slider(
              value: _height.toDouble(),
              onChanged: (double newHeight) {
                setState(() {
                  _height = newHeight.toInt();
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
