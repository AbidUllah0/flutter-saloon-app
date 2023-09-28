import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/SignIn/sign_in.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:flutter/material.dart';

Future<dynamic> passChangePopUp(
  BuildContext context,
  String titleText,
  String discText,
  String btnText,
  String img,
) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            padding: EdgeInsets.all(15),
            height: 398,
            width: 327,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(img),
                SizedBox(
                  height: 20,
                ),
                Text(
                  titleText,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  discText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color(0xff767676),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: btnText,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ),
                    );
                    passChangePopUp(
                      context,
                      'OOPS',
                      "Your Device is not Connected",
                      'Back To Home',
                      'assets/images/profile.png',
                    );
                  },
                  color: AppColors.btnColor,
                ),
              ],
            ),
          ),
        );
      });
}
