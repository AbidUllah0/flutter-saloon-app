import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../CongratulationScreen/components/custom_half_button.dart';
import '../HomeScreen/components/bottomNavBar.dart';
import '../your_appointment/components/calculatePriceText.dart';
import '../your_appointment/components/row_container_data.dart';
import '../your_appointment/components/service_list.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        appBar: customAppBar('Details'),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 19),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppColors.btnColor,
            child: Column(
              children: [
                Image.asset('assets/images/appointment.png'),
                Container(
                  height: MediaQuery.of(context).size.height / 1.42,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                      color: Colors.white),
                  child: Column(
                    children: [
                      RowContainerData(
                          hideText: 'Date & Time : ',
                          blackText: 'Mon, 12 Aug - 10:00 AM '),
                      SizedBox(
                        height: 10,
                      ),
                      RowContainerData(
                          hideText: 'Gender Type : ', blackText: 'Man'),
                      SizedBox(
                        height: 8,
                      ),
                      ServiceList(),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CalculatePriceText(
                          preText: 'Total Time', postText: "55 Minutes"),
                      CalculatePriceText(
                          preText: 'Sub Total', postText: '\$85.00'),
                      CalculatePriceText(
                          preText: 'Coupon Discount', postText: '-\$15.00'),
                      SizedBox(
                        height: 10,
                      ),
                      DottedLine(
                        direction: Axis.horizontal,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CalculatePriceText(
                          preText: 'Total Price', postText: '\$70.00'),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomHalfButton(
                            btnText: 'Cancel',
                            btnTextColor: Color(0xffFF5470),
                            btnBackgroundColor: Colors.white,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                                        height: 262,
                                        width: 327,
                                        child: Column(
                                          children: [
                                            Text('Why are Your Cancel Order',style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                            ),),
                                            SizedBox(height: 15,),
                                            TextFormField(
                                              maxLines: 2,
                                              decoration: InputDecoration(
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.grey,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.grey,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  label: Text('Ghammii'),
                                                  hintText:
                                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                                            ),
                                            SizedBox(height: 15,),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: CustomHalfButton(
                                                    btnText: 'Cancel',
                                                    btnTextColor:
                                                        Color(0xffFF5470),
                                                    btnBackgroundColor:
                                                        Colors.white,
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Expanded(
                                                  child: CustomHalfButton(
                                                    btnText: 'Submit',
                                                    btnTextColor: Colors.white,
                                                    btnBackgroundColor:
                                                        AppColors.btnColor,
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              CustomNavigationBar(),
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
                                    );
                                  });
                            },
                          ),
                          CustomHalfButton(
                            btnText: 'Back To Home',
                            btnTextColor: Colors.white,
                            btnBackgroundColor: AppColors.btnColor,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CustomNavigationBar(),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
