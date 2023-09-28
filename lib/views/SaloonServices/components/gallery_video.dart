import 'package:flutter/material.dart';

class GalleryVideo extends StatelessWidget {
  List _imgList = [
    'assets/images/gv1.png',
    'assets/images/gv2.png',
    'assets/images/gv3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
          itemCount: _imgList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 184,
              width: 327,
              child: Image.asset(
                _imgList[index],
              ),
            );
          }),
    );
  }
}
