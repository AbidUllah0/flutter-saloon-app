
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

AppBar customAppBar(String text) {

  return AppBar(
    backgroundColor: AppColors.appBackgroundColor,
    centerTitle: true,
    title: Text(text,style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
    ),),
    leading: Container(
      margin: EdgeInsets.only(left: 8,top: 8),
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Icon(Icons.arrow_back),
    ),
  );
}