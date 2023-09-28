import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/barbar_detail.dart';
import '../HomeScreen/components/bottomNavBar.dart';
import '../HomeScreen/home_screen.dart';
import '../Location/components/locationTextField.dart';

class ImageDetail extends StatelessWidget {
  List<String> descText = [];
  List<BarbarDetail> _barbarDetail = [
    BarbarDetail(
      Image: 'assets/images/barbar1.png',
      name: 'Barbar 1',
    ),
    BarbarDetail(
      Image: 'assets/images/barbar2.png',
      name: 'Barbar 2',
    ),
    BarbarDetail(
      Image: 'assets/images/barbar3.png',
      name: 'Barbar 3',
    ),
    BarbarDetail(
      Image: 'assets/images/barbar4.png',
      name: 'Barbar 4',
    ),
    BarbarDetail(
      Image: 'assets/images/barbar5.png',
      name: 'Barbar 5',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        body: Column(
          children: [
            LocationTextField(),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/allowLocationi.png',
                    height: MediaQuery.of(context).size.height / 1.24,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    height: 272,
                    width: 375,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              _barbarDetail[0].Image,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _barbarDetail[3].name,
                                ),
                                Row(
                                  children: [
                                    Image.asset(BarbarDetail.rateImge),
                                    Text(BarbarDetail.rateText),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(BarbarDetail.distanceImg),
                                Text(
                                  BarbarDetail.distance,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Barbar will arrive at your location at 12:30AM , Tuesday',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                          text: "Contact Barbar",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CustomNavigationBar(),
                              ),
                            );
                          },
                          color: AppColors.btnColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
