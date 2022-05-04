import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;
  final Color? color;

  const CustomCard({Key? key, this.child, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
