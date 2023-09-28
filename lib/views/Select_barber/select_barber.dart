import 'package:barber_saloon_app/models/barbar_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'image_detail.dart';

class SelectBarber extends StatelessWidget {
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
        appBar: AppBar(
          title: Text(
            'Select Barbar',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
          leading: Text(''),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/allowLocationi.png'),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 300.h,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 96,
                          child: Card(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                      Image.asset(_barbarDetail[index].Image),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          _barbarDetail[index].name,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              BarbarDetail.rateImge,
                                              width: 20,
                                              height: 6.3,
                                            ),
                                            Text(
                                              BarbarDetail.rateText,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Image.asset(
                                                BarbarDetail.distanceImg),
                                            Text(BarbarDetail.distance),
                                          ],
                                        ),
                                        BarbarDetail.customButton(
                                          () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ImageDetail(),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
