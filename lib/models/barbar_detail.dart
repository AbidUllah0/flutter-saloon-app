import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BarbarDetail {
  String name;
  String Image;
  static IconData imgIcon = Icons.heart_broken_rounded;
  static String rateImge = 'assets/images/rateStar.png';
  static String rateText = '4.9 (36)';
  static String distanceImg = 'assets/images/distanceImg.png';
  static String distance = '5 km';

  BarbarDetail({
    required this.name,
    required this.Image,
  });

  static customButton(VoidCallback onPressed) {
    return Container(
      height: 24,
      width: 100,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffF2F1FF),
        ),
        child: Text(
          'Book Now',
          style: TextStyle(
            color: Color(0xff6F45F0),
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
