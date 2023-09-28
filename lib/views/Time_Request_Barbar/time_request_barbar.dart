import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/Time_Request_Barbar/components/date_top_data.dart';
import 'package:barber_saloon_app/views/Time_Request_Barbar/components/time_row.dart';
import 'package:barber_saloon_app/views/Time_Request_Barbar/components/topRowData.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:flutter/material.dart';

import '../your_appointment/your_appointment.dart';
import 'components/custom_grid_time.dart';

class TimeRequestBarbar extends StatelessWidget {
  const TimeRequestBarbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: customAppBar('Select Date & Time'),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: AppColors.btnColor),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TopRowData(),
                  DateTopData(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 150,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  topLeft: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TimeRow(),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTimeDate(),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => YourAppointment(),
                          ),
                        );
                      },
                      color: AppColors.btnColor,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
