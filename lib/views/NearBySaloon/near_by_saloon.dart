import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/NearBySaloon/Components/row_icons.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

import '../HomeScreen/components/barbarVertData.dart';

class NearBySaloon extends StatelessWidget {
  const NearBySaloon({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar('Popular Barbar'),
        backgroundColor: AppColors.appBackgroundColor,
        body: Stack(
          children: [
            Positioned(
              top: 20,
              child: Container(
                padding: EdgeInsets.only(bottom: 20, left: 10, right: 10),
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: AppColors.btnColor),
                child: RowIcons(),
              ),
            ),
            Positioned(
              top: 90,
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: BarbarVertData(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
