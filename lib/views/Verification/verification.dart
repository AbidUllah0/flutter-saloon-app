import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/widgets/bottomContainer.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:barber_saloon_app/widgets/textButton.dart';
import 'package:barber_saloon_app/widgets/topContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../CreateNewPass/create_new_pass.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: customAppBar('Verification'),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Stack(
            children: [
              topContainer(
                text:
                    'We’ve the code send to your phone number - 1253 2456 2569',
              ),
              Positioned(
                top: 70,
                bottom: 0,
                child: bottomContainer(
                  column: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Pinput(
                        length: 6,
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '00:56',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      CustomTextButton(
                        text1: 'Didn’t receive code? ',
                        text2: 'Resend Code',
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2.5,
                      ),
                      CustomButton(
                        text: 'Send',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateNewPass(),
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
