import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class TopRowData extends StatelessWidget {
  const TopRowData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              color: AppColors.appBackgroundColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 17,
            )),
        Text(
          'August 2022',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 17,
          ),
        ),
      ],
    );
  }
}
