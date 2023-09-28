import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customTextField.dart';

class bottomContainer extends StatelessWidget {
  Column column;
  bottomContainer({required this.column});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15,left: 20,right: 20),
      height: double.infinity,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            // Color of the shadow
            spreadRadius: 5,
            // Spread radius
            blurRadius: 7,
            // Blur radius
            offset: Offset(0, 3), // Offset in x and y directions
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: column,
    );
  }
}
