import 'package:flutter/material.dart';

class TimeRowContainer extends StatelessWidget {
  Color color;

  TimeRowContainer({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
