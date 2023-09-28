import 'package:flutter/material.dart';

class RowContainerData extends StatelessWidget {
  String hideText;
  String blackText;

  RowContainerData({required this.hideText, required this.blackText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 327,
      color: Colors.white,
      child: Card(
        elevation: 0.5,
        color: Color(0xffFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(
                hideText,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff626262)),
              ),
              Text(
                blackText,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
