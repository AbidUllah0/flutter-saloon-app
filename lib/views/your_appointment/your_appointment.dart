import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/your_appointment/components/calculate_price.dart';
import 'package:barber_saloon_app/views/your_appointment/components/coupon_textField.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

import 'components/row_container_data.dart';
import 'components/service_list.dart';

class YourAppointment extends StatelessWidget {
  const YourAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: customAppBar('Your Appointment'),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            child: Container(
              padding: EdgeInsets.only(
                  top:5,bottom: 30, left: 15, right: 15),
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: AppColors.btnColor),
              child: Center(
                child: Image.asset(
                  'assets/images/appointment.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            top: 120,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowContainerData(
                        hideText: 'Date & Time : ',
                        blackText: 'Mon, 12 Aug - 10:00 AM '),
                    RowContainerData(
                        hideText: 'Gender Type : ', blackText: 'Man'),
                    ServiceList(),
                    SizedBox(height: 8,),
                    Text('Apply Coupon'),
                    CouponTextField(),
                    SizedBox(height: 8,),
                    CalculatePrice(),

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
