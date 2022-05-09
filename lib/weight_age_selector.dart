import 'package:flutter/material.dart';
import 'custom_card.dart';

class WeightAgeSelector extends StatelessWidget {
  const WeightAgeSelector({Key? key}) : super(key: key);

  final int _weight = 60;
  final int _age = 30;

  int getWeight() => _weight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          ButtonCard(
            title: 'WEIGHT',
            value: _weight,
          ),
          ButtonCard(
            title: 'AGE',
            value: _age,
          ),
        ],
      ),
    );
  }
}

class ButtonCard extends StatefulWidget {
  ButtonCard({Key? key, required this.title, required this.value})
      : super(key: key);

  final String title;
  int value;

  @override
  State<ButtonCard> createState() => _ButtonCardState();
}

class _ButtonCardState extends State<ButtonCard> {
  void addValue() {
    setState(() {
      widget.value++;
    });
  }

  void removeValue() {
    setState(() {
      widget.value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomCard(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              widget.value.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundButton(
                  action: removeValue,
                  icon: Icons.remove,
                ),
                RoundButton(
                  action: addValue,
                  icon: Icons.add,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  const RoundButton({Key? key, this.icon, required this.action})
      : super(key: key);

  final IconData? icon;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: action,
      child: Icon(
        icon,
        size: 40.0,
        color: Colors.white,
      ),
      shape: const CircleBorder(),
      minWidth: 0.0,
      elevation: 0.0,
      color: Theme.of(context).colorScheme.tertiary,
    );
  }
}
