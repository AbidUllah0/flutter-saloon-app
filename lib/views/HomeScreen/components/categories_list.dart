import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  Color color;
  String image;
  String text;

  CategoriesList({required this.image, required this.color,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(35)),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(image),
            ),
          ),
        ),
        Text(text,style: TextStyle(
          color: Color(0xff626262),
          fontWeight: FontWeight.w400,
        ),),
      ],
    );
  }
}

