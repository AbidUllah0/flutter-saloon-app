import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  String labelText;
  String hintText;
  Icon? sIcon;
  Icon? pIcon;

  CustomTextField({
    required this.labelText,
    required this.hintText,
    this.sIcon,
    this.pIcon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Container(height: 50,
          width: 327,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: sIcon,
              prefixIcon: pIcon,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(16)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 3,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
