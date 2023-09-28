import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:barber_saloon_app/widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Select_barber/select_barber.dart';
import 'components/locationTextField.dart';

class AllowLocation extends StatelessWidget {
  const AllowLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              LocationTextField(),
              Container(
                // width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width / 0.6,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/allowLocationi.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 60.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: CustomButton(
                              text: 'Continue',
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectBarber(),),);
                              },
                              color: AppColors.btnColor,
                            ),
                          ),
                        ),
                      ),
                    ),
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
