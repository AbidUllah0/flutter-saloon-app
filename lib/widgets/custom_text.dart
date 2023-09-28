import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String title;
  double ? fontSize;
  FontWeight? fontWeight;
  Color? color;

   CustomText({super.key  ,this.color, this.fontSize, this.fontWeight, required this.title}  );

  @override
  Widget build(BuildContext context) {
    return Text(title,  style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color,),);
  }
}
