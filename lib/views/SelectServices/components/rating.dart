import 'package:barber_saloon_app/models/rating_model.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {

  List<RatingModel> _ratingData = [
    RatingModel(text: 'Any'),
    RatingModel(text: '2.5'),
    RatingModel(text: '3.5'),
    RatingModel(text: '4.0'),
    RatingModel(text: '4.5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _ratingData.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(5),
              height: 20,
              width: 60,
              decoration: BoxDecoration(
                color: index==0 ? Colors.blue :Color(0xffF2F1FF),
                borderRadius: BorderRadius.circular(27),
              ),
              child: Row(
                children: [
                  Text(_ratingData[index].text),
                 Image.asset(RatingModel.starImg,height: 15,width: 15,)
                ],
              ),
            );
          }),
    );
  }
}
