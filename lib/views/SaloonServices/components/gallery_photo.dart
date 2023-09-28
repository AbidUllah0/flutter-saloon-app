import 'package:flutter/material.dart';

class GalleryPhoto extends StatelessWidget {
  List _imgList = [
    'assets/images/gp1.png',
    'assets/images/gp2.png',
    'assets/images/gp3.png',
    'assets/images/gp4.png',
    'assets/images/gp5.png',
    'assets/images/gp6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          height: 800,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
            //physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: _imgList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
            itemBuilder: (context, index) {
              return Container(
                height: 155,
                width: 155,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  _imgList[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
