import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/SignIn/sign_in.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Enter Your Location'),
      body: Stack(
        children: [
          Image.asset('assets/images/bglocation.png'),
          Positioned(
              left: 90,
              top: 200,
              child: Image.asset('assets/images/loctrack.png')),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: CustomButton(
              text: 'Confirm',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              },
              color: AppColors.btnColor,
            ),
          ),
        ],
      ),
    );
  }
}
