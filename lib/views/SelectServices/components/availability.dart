import 'package:barber_saloon_app/models/rating_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Availability extends StatelessWidget {
  List<RatingModel> _avaiData = [
    RatingModel(
      text: 'Any',
    ),
    RatingModel(
      text: 'Open Now',
    ),
    RatingModel(
      text: 'Closed',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _avaiData.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),
            height: 20,
            width: index!=1 ? 60 : 100,
            decoration: BoxDecoration(
                color: index == 1 ? Colors.blue : Color(0xffF2F1FF),
                borderRadius: BorderRadius.circular(27)),
            child: Center(
              child: Text(_avaiData[index].text),
            ),
          );
        },
      ),
    );
  }
}
