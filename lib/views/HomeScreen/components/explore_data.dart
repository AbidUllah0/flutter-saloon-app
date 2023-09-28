import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ExploreData extends StatelessWidget {
  const ExploreData({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image.asset('assets/images/home.png'),
          Container(
            margin: EdgeInsets.only(left: 15,right: 10),
            height: 142,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
