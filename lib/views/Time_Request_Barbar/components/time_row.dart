import 'package:barber_saloon_app/views/Time_Request_Barbar/components/time_row_container.dart';
import 'package:flutter/material.dart';

class TimeRow extends StatelessWidget {
  List<Color> _colorList = [
    Color(0xff6F45F0),
    Color(0xffC3BEFE),
    Color(0xff1ED390),
  ];
  List<String> _textList = [
    'Selected',
    'Available',
    'Booked',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Time'),
        Row(
          children: [
            TimeRowContainer(
              color: _colorList[0],
            ),
            SizedBox(width: 5),
            Text(_textList[0]),
            SizedBox(width: 5),
            TimeRowContainer(
              color: _colorList[1],
            ),
            SizedBox(width: 5),
            Text(_textList[1]),
            SizedBox(width: 5),
            TimeRowContainer(
              color: _colorList[2],
            ),
            SizedBox(width: 5),
            Text(_textList[2]),
          ],
        ),
      ],
    );
  }
}
