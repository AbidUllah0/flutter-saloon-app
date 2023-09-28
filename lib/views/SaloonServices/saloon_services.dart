import 'package:barber_saloon_app/views/SaloonServices/components/bottom_reviews_data.dart';
import 'package:barber_saloon_app/views/SaloonServices/components/customTabBar.dart';
import 'package:barber_saloon_app/views/SaloonServices/components/top_barbar_data.dart';
import 'package:flutter/material.dart';
import '../SaloonDetail/components/top_icons.dart';
import '../Time_Request_Barbar/components/topRowData.dart';

class SaloonServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/saloon.png',
              height: 350,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              left: 10,
              right: 10,
              top: 50,
              child: TopIcons(),
            ),
            Positioned(
              bottom: 0,
              top: 250,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    TopBarbarData(),
                    BottomReviewsData(),
                    CustomTabBar(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
