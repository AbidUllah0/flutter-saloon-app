import 'package:flutter/material.dart';

class SortByMenu extends StatelessWidget {
  String text;
  Color? color;

  SortByMenu({required this.text,this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            border: Border.all(),
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
