import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class CustomHomeTextField extends StatelessWidget {
  const CustomHomeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(30)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            suffixIcon: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.btnColor,
              ),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
