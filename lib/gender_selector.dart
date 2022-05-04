import 'package:flutter/material.dart';
import 'custom_card.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({Key? key}) : super(key: key);

  GenderCard maleCard = GenderCard(
    title: 'MALE',
    icon: Icons.male,
  );

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: maleCard;
            ),
          ),
          GenderCard(
            icon: Icons.female,
            title: 'FEMALE',
          ),
        ],
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  final IconData? icon;
  final String title;

  const GenderCard({Key? key, this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
