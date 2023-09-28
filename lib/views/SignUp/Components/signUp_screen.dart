import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/SignIn/sign_in.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:barber_saloon_app/widgets/textButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/alert_dialog.dart';
import '../../../widgets/bottomContainer.dart';
import '../../../widgets/customTextField.dart';
import '../../../widgets/custom_horizontal_divider.dart';
import '../../../widgets/horizontal_images.dart';
import '../../../widgets/topContainer.dart';
import 'flag_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: customAppBar('Sign Up'),
      body: SingleChildScrollView(

        child: Container(
          height: MediaQuery.of(context).size.height.h + 8,
          child: Stack(
            children: [
              Positioned(
                top: 2,
                left: 0,
                right: 0,
                child: topContainer(
                  text: 'Sign Up to access all the features in  Barber Shop',
                ),
              ),
              Positioned(
                top: 50,
                bottom: 0,
                left: 0,
                right: 0,
                child: bottomContainer(
                  column: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        labelText: 'Full Name',
                        hintText: 'Enter Your Full Name',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        labelText: 'Email',
                        hintText: 'Enter Your Email',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Phone Number'),
                      SizedBox(
                        height: 5,
                      ),
                      flagTextField(),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        labelText: 'Select Gender',
                        hintText: 'Male',
                        sIcon: Icon(Icons.keyboard_arrow_down_outlined),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        labelText: 'Password',
                        hintText: 'Enter Your Password',
                        sIcon: Icon(Icons.visibility_off_outlined),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        text: 'Sign Up',
                        onPressed: () {
                          buildShowDialog(context);

                        },
                        color: AppColors.btnColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomHorizontalDivider(
                        text: '  Or Sign Up With  ',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      HorizontalImages(),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextButton(
                        text1: 'Have An Account? ',
                        text2: 'SIGN IN',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ),
                          );
                        },
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
