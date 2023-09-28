import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTimeDate extends StatelessWidget {
  List<String> _gridList = [
    '10:00 AM',
    '10:15 AM',
    '10:30 AM',
    '10:45 AM',
    '11:00 AM',
    '11:15 AM',
    '11:30 AM',
    '11:45 AM',
    '12:00 AM',
    '12:15 AM',
    '12:30 AM ',
    '12:45 AM',
    '01:00 PM',
    '01:15 PM',
    '01:30 PM',
    '01:45 PM',
    '02:00 PM',
    '02:15 PM',
    '02:30 PM',
    '02:45 PM',
    '03:00 PM',
    '03:15 PM',
    '03:30 PM',
    '03:45 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: GridView.builder(
        itemCount: _gridList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 4,
          childAspectRatio: 2,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: index == 0
                  ? AppColors.selectedColor
                  : index == 8 || index == 11 || index == 14
                      ? AppColors.bookedColor
                      : AppColors.availColor,
            ),
            child: Center(
              child: Text(
                _gridList[index],
                style: TextStyle(
                  color: index == 0
                      ? Colors.white
                      : index == 8 || index == 11 || index == 14
                          ? Color(0xff00BF71)
                          : Color(0xff626262),
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
