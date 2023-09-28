import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CouponTextField extends StatelessWidget {
  const CouponTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 327,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: BorderSide(color: Color(0xffC3BEFE))),
          hintText: 'Enter Coupon',
          prefixIcon: Image.asset('assets/images/coupon.png',scale: 1.5,),
          suffixIcon: Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
              color: AppColors.btnColor,
            ),
            child: Center(child: Text('Apply')),
          ),
        ),
      ),
    );
  }
}
