import 'package:barber_saloon_app/widgets/textButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../views/Location/allow_location.dart';
import '../views/Location/location_screen.dart';
import 'customButton.dart';

Future<dynamic> buildShowDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: Container(
          padding: EdgeInsets.all(20),
          width: 327,
          height: 450,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.asset('assets/images/location.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enable Location',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Set your location to start find Barber shop around you',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff767676),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'Allow Location Access',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllowLocation(),),);
                },
                color: AppColors.btnColor,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextButton(
                text1: 'Enter My Location',
                text2: ' ',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationScreen(),),);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
