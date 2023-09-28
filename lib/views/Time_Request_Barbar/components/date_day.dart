import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateDay extends StatelessWidget {
  String date;
  String day;
  Color? selectedInnerContainer;
  Color? selectedOuterContainer;

  DateDay({
    required this.date,
    required this.day,
     this.selectedInnerContainer,
    this.selectedOuterContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 72,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(150),
        color: selectedOuterContainer,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 4, left: 4, right: 4),
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: selectedInnerContainer,
            ),
            child: Center(child: Text(date)),
          ),
          Text(day),
        ],
      ),
    );
  }
}
