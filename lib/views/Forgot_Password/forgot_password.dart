import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/Verification/verification.dart';
import 'package:barber_saloon_app/widgets/bottomContainer.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:barber_saloon_app/widgets/customTextField.dart';
import 'package:barber_saloon_app/widgets/topContainer.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        'Forgot Password',
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              topContainer(
                  text: 'Enter your email address and we will send you code'),
              Positioned(
                bottom: 0,
                top: 60,
                child: bottomContainer(
                  column: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        labelText: 'Email/Phone Number',
                        hintText: 'abidghammii@gmail.com',
                      ),
                      SizedBox(
                        height: 180,
                      ),
                      CustomButton(
                        text: 'Reset Password',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Verification(),
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
        ),
      ),
    );
  }
}
