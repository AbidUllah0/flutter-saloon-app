import 'package:flutter/material.dart';

import '../../SelectServices/select_services.dart';

class CategoriesText extends StatelessWidget {
  String catText;
  String viewText;
  VoidCallback onPressed;

  CategoriesText(
      {required this.catText, required this.viewText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          catText,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        InkWell(
          onTap: onPressed,
          child: Text(
            viewText,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff767676)),
          ),
        ),
      ],
    );
  }
}
