import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String text1;
  String text2;
  VoidCallback onPressed;

  CustomTextButton(
      {required this.text1, required this.text2, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Center(
        child: RichText(
            text: TextSpan(
          children: [
            TextSpan(
              text: text1,
              style: TextStyle(
                color: Color(0xff767676),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: text2,
              style: TextStyle(
                color: Color(0xff6F45F0),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
