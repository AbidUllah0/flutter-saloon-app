import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/widgets/bottomContainer.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:barber_saloon_app/widgets/customTextField.dart';
import 'package:barber_saloon_app/widgets/topContainer.dart';
import 'package:flutter/material.dart';

import '../PasswordChanged/password_changed.dart';

class CreateNewPass extends StatelessWidget {
  const CreateNewPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Create New Password'),
      body: Container(
        child: Stack(
          children: [
            topContainer(
                text:
                    'Reset your password to recovery and log in your account'),
            SizedBox(
              height: 20,
            ),
            Positioned(
              bottom: 0,
              top: 70,
              child: bottomContainer(
                column: Column(
                  children: [
                    CustomTextField(
                      labelText: 'New Password',
                      hintText: '*****',
                      sIcon: Icon(Icons.visibility_off_outlined),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      labelText: 'Confirm Password',
                      hintText: 'Enter Your Password',
                      sIcon: Icon(
                        Icons.visibility_off_outlined,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      text: 'Confirm',
                      onPressed: () {
                        passChangePopUp(
                          context,
                          'Password Changed',
                          'Your Password Has successfully changed',
                          'Done',
                          'assets/images/profile.png',
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
    );
  }
}
