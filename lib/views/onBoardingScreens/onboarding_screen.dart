import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import '../../models/onboard_data_model.dart';
import '../SignUp/Components/signUp_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnBoardDataModel> _onBoardData = [
    OnBoardDataModel(
        img: 'assets/images/onboard1.png',
        title: 'Explore Freelancer Barber inYour Area',
        subTitle:
            'Quam laoreet eget vel amet enim, pretium. Pelle ntesque tellus erat in sed urnaporttitor. Scelerisque lectus'),
    OnBoardDataModel(
        img: 'assets/images/onboard2.png',
        title: 'Book Your Favorite Hair freelancer stylist Shop',
        subTitle:
            'Quam laoreet eget vel amet enim, pretium. Pelle ntesque tellus erat in sed urnaporttitor. Scelerisque lectus'),
    OnBoardDataModel(
        img: 'assets/images/onboard3.png',
        title: 'Let’s Make Your More Beautiful',
        subTitle:
            'Quam laoreet eget vel amet enim, pretium. Pelle ntesque tellus erat in sed urnaporttitor. Scelerisque lectus'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F1FF),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F1FF),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              'Skip',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff767676)),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              scrollDirection: Axis.horizontal,
              itemCount: _onBoardData.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Positioned(
                      top: 0.sp,
                      left: 0.sp,
                      right: 0.sp,
                      child: Image.asset(
                        _onBoardData[index].img,
                      ),
                    ),
                    Positioned(
                      //top: 300.sp,
                      left: 0.sp,
                      right: 0.sp,
                      bottom: 0.sp,
                      child: Container(
                        height: 180.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                _onBoardData[index].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                _onBoardData[index].subTitle,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff767676),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 30.sp,
                      bottom: 30.sp,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/img.png',
                          height: 70,
                          width: 70,
                        ),
                      ),
                    ),
                    //used for bottom dots
                    Positioned(
                      left: MediaQuery.of(context).size.width / 2.5,
                      bottom: 100.sp,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 10,
                              width: currentIndex == index ? 20 : 10,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
