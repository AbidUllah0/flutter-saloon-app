import 'package:barber_saloon_app/views/Time_Request_Barbar/components/date_day.dart';
import 'package:flutter/material.dart';

class DateTopData extends StatelessWidget {
  List<DateDay> _dateDayData = [
    DateDay(date: '12', day: 'Mon'),
    DateDay(date: '13', day: 'Tue'),
    DateDay(date: '14', day: 'Wed'),
    DateDay(date: '15', day: 'Thu'),
    DateDay(date: '16', day: 'Fri'),
    DateDay(date: '17', day: 'Sat'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        itemCount: _dateDayData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DateDay(
            date: _dateDayData[index].date,
            day: _dateDayData[index].day,
            selectedInnerContainer: index == 0 ? Colors.blue : Colors.white,
            selectedOuterContainer:
                index == 0 ? Colors.white : Color(0xffC3BEFE),
          );
        },
      ),
    );
  }
}
