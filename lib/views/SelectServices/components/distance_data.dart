import 'package:flutter/material.dart';

import '../../../models/rating_model.dart';

class DistanceData extends StatelessWidget {
  List<RatingModel> _distanceData = [
    RatingModel(text: 'Any'),
    RatingModel(text: '1.0 mi'),
    RatingModel(text: '3.0 mi'),
    RatingModel(text: '4.0 mi'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _distanceData.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(8),
              height: 20,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                color: index == 0 ? Colors.blue : Color(0xffF2F1FF),
              ),
              child: Center(
                child: Text(_distanceData[index].text),
              ),
            );
          }),
    );
  }
}
