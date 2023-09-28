import 'package:flutter/material.dart';


class topContainer extends StatelessWidget {
  String text;

  topContainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5,left: 20,right: 20),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(1), // Color of the shadow
            spreadRadius: 5, // Spread radius
            blurRadius: 7, // Blur radius
            offset: Offset(0, 3), // Offset in x and y directions
          ),
        ],
        color: Color(0xff6F45F0),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(35),
          topLeft: Radius.circular(35),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
