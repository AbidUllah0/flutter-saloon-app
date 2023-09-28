import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/your_appointment/components/calculatePriceText.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'buildAppointmentModelSheet.dart';

class CalculatePrice extends StatelessWidget {
  const CalculatePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalculatePriceText(preText: 'Total Time', postText: "55 Minutes"),
        CalculatePriceText(preText: 'Sub Total', postText: '\$85.00'),
        CalculatePriceText(preText: 'Coupon Discount', postText: '-\$15.00'),
        DottedLine(
          direction: Axis.horizontal,
        ),
        CalculatePriceText(preText: 'Total Price', postText: '\$70.00'),
        SizedBox(
          height: 10,
        ),
        CustomButton(
          text: 'Pay Now',
          onPressed: () {
            buildAppointmentModalBottomSheet(context);
          },
          color: AppColors.btnColor,
        ),
      ],
    );
  }


}
