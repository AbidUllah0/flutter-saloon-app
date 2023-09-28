import 'package:barber_saloon_app/views/HomeScreen/components/bottomNavBar.dart';
import 'package:barber_saloon_app/views/HomeScreen/home_screen.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../DetailScreen/detail_screen.dart';
import '../your_appointment/components/calculatePriceText.dart';
import '../your_appointment/components/calculate_price.dart';
import '../your_appointment/components/row_container_data.dart';
import '../your_appointment/components/service_list.dart';
import 'components/custom_half_button.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        appBar: AppBar(
          leading: Text(''),
          backgroundColor: AppColors.appBackgroundColor,
          title: Text(
            'Congratulation',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
              topLeft: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/images/congratulationIcon.png',
                height: 100,
                width: 100,
              ),
              Text(
                'Book SuccessFull',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff626262),
                      ),
                    ),
                    RowContainerData(
                        hideText: 'Date & Time : ',
                        blackText: 'Mon, 12 Aug - 10:00 AM '),
                    RowContainerData(
                        hideText: 'Gender Type : ', blackText: 'Man'),
                    ServiceList(),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CalculatePriceText(
                        preText: 'Total Time', postText: "55 Minutes"),
                    CalculatePriceText(
                        preText: 'Sub Total', postText: '\$85.00'),
                    CalculatePriceText(
                        preText: 'Coupon Discount', postText: '-\$15.00'),
                    DottedLine(
                      direction: Axis.horizontal,
                    ),
                    CalculatePriceText(
                        preText: 'Total Price', postText: '\$70.00'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomHalfButton(
                          btnText: 'Back To Home',
                          btnTextColor: Color(0xff6F45F0),
                          btnBackgroundColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CustomNavigationBar(),
                              ),
                            );
                          },
                        ),
                        CustomHalfButton(
                          btnText: 'View Details',
                          btnTextColor: Colors.white,
                          btnBackgroundColor: AppColors.btnColor,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
