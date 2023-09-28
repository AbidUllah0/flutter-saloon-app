import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/SelectServices/components/availability.dart';
import 'package:barber_saloon_app/views/SelectServices/components/price_range.dart';
import 'package:barber_saloon_app/views/SelectServices/components/rating.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:barber_saloon_app/widgets/custom_haircut_data.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../Time_Request_Barbar/time_request_barbar.dart';
import 'distance_data.dart';

class SelectDateTime extends StatefulWidget {
  @override
  State<SelectDateTime> createState() => _SelectDateTimeState();
}

class _SelectDateTimeState extends State<SelectDateTime> {
  int _currentValue = 20;

  int _currentValue2 = 09;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: customAppBar('Select Date & Time'),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: AppColors.btnColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160,
                    margin: EdgeInsets.all(5),
                    child: NumberPicker(
                      itemHeight: 30,
                      step: 1,
                      minValue: 1,
                      maxValue: 50,
                      textStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                      selectedTextStyle: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      value: _currentValue,
                      onChanged: (int value) {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 160,
                    child: NumberPicker(
                      itemHeight: 30,
                      minValue: 1,
                      textStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                      selectedTextStyle: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      maxValue: 30,
                      value: _currentValue2,
                      onChanged: (int value) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            top: 200,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: CustomHairCutData()),
                    Text(
                      'Price Range',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    PriceRange(),
                    Text('Rating'),
                    Rating(),
                    Text('Availability'),
                    Availability(),
                    Text('Distance'),
                    DistanceData(),
                    CustomButton(
                      text: 'Post Request For Barbar',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TimeRequestBarbar(),
                          ),
                        );
                      },
                      color: AppColors.btnColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
