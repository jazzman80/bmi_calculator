import 'package:flutter/material.dart';
import 'custom_card.dart';

enum Gender {
  male,
  female,
}

class GenderSelector extends StatefulWidget {
  const GenderSelector({Key? key}) : super(key: key);

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  Gender _gender = Gender.male;

  void _onTap(Gender selectedGender) {
    setState(() {
      _gender = selectedGender;
    });
  }

  Color _selectColor(Gender selectedGender) {
    return _gender == selectedGender
        ? Theme.of(context).colorScheme.surface
        : Theme.of(context).colorScheme.surfaceVariant;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          GenderCard(
            onTap: () => _onTap(Gender.male),
            icon: Icons.male,
            title: 'MALE',
            color: _selectColor(Gender.male),
          ),
          GenderCard(
            onTap: () => _onTap(Gender.female),
            icon: Icons.female,
            title: 'FEMALE',
            color: _selectColor(Gender.female),
          ),
        ],
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  const GenderCard(
      {Key? key,
      required this.title,
      this.icon,
      this.color,
      required this.onTap})
      : super(key: key);

  final String title;
  final IconData? icon;
  final Color? color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(),
        child: CustomCard(
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 80.0,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
