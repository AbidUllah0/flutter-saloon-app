import 'package:flutter/material.dart';

class CustomHalfButton extends StatelessWidget {
  String btnText;
  Color btnTextColor;
  Color btnBackgroundColor;
  VoidCallback onPressed;

  CustomHalfButton(
      {required this.btnText,
      required this.btnTextColor,
      required this.btnBackgroundColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 155,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: btnBackgroundColor
        ),
        onPressed: onPressed,
        child: Text(
          btnText,
          style: TextStyle(
            color: btnTextColor,
          ),
        ),
      ),
    );
  }
}
