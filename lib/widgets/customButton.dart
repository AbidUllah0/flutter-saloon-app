import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  Color color;

  CustomButton(
      {required this.text, required this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color, textStyle: TextStyle(letterSpacing: 2)),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
