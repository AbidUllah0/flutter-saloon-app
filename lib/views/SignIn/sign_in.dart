import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/SignUp/Components/signUp_screen.dart';
import 'package:barber_saloon_app/views/Verification/verification.dart';
import 'package:barber_saloon_app/widgets/bottomContainer.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:barber_saloon_app/widgets/customTextField.dart';
import 'package:barber_saloon_app/widgets/custom_horizontal_divider.dart';
import 'package:barber_saloon_app/widgets/horizontal_images.dart';
import 'package:barber_saloon_app/widgets/textButton.dart';
import 'package:barber_saloon_app/widgets/topContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../widgets/customAppBar.dart';
import '../Forgot_Password/forgot_password.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: customAppBar('Sign In'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                topContainer(
                    text:
                        'Login to your account to access all the features in Barber Shop'),
                Positioned(
                  bottom: 0,
                  top: 60,
                  child: bottomContainer(
                    column: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomTextField(
                          labelText: 'Email/Phone Number',
                          hintText: 'Enter Email/Phone Number',
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomTextField(
                          labelText: 'Password',
                          hintText: 'Enter Your Password',
                          sIcon: Icon(Icons.visibility_off_outlined),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        //import flutter switch package
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                FlutterSwitch(
                                  inactiveToggleColor: Colors.grey,
                                  inactiveColor: Colors.white,
                                  activeColor: Colors.pink,
                                  inactiveSwitchBorder:
                                      Border.all(color: Colors.grey),
                                  activeToggleColor: Colors.grey,
                                  borderRadius: 50,
                                  width: 42,
                                  height: 20,
                                  value: isSwitched,
                                  onToggle: (value) {
                                    setState(
                                      () {
                                        isSwitched = value;
                                      },
                                    );
                                  },
                                ),
                                Text(
                                  '   Save Me',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            CustomTextButton(
                              text1: '',
                              text2: 'Forgot Password',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ForgotPassword(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                          text: 'Log In',
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
                        SizedBox(
                          height: 20,
                        ),
                        CustomHorizontalDivider(text: '  Or Sign In With  '),
                        SizedBox(
                          height: 20,
                        ),
                        HorizontalImages(),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomTextButton(
                          text1: 'Don"t have an account? ',
                          text2: 'SIGN UP',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
