import 'package:flutter/material.dart';

class CustomHorizontalDivider extends StatelessWidget {
  String text;

  CustomHorizontalDivider({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 2,
            color: Colors.grey,
          ),
        ),
        Text(text,style: TextStyle(
          color: Colors.grey,
        ),),
        Expanded(
          child: Container(
            height: 2,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
