import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class Side_Logo extends StatelessWidget {
  const Side_Logo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "FK",
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.lineThrough,
            color: customeColors.yellowSecondary),
      ),
    );
  }
}
