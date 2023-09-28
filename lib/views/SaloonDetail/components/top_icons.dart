import 'package:flutter/material.dart';

class TopIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          child: Center(child: Icon(Icons.arrow_back)),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Center(child: Icon(Icons.heart_broken_rounded)),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Center(
                child: Icon(Icons.share),
              ),
            ),
          ],
        )
      ],
    );
  }
}
