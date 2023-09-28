import 'package:flutter/material.dart';

class CalculatePriceText extends StatelessWidget {
  String preText;
  String postText;

  CalculatePriceText({required this.preText, required this.postText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(preText,style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,color: Colors.grey,
        ),),
        Text(postText),
      ],
    );
  }
}
