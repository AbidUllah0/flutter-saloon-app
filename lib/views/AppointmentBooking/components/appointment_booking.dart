import 'package:barber_saloon_app/views/AppointmentBooking/components/custom_booking_tabbar.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class AppointmentBooking extends StatelessWidget {
  const AppointmentBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('My Appointment Booking'),
      backgroundColor: AppColors.appBackgroundColor,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            CustomBookingTabbar(),
          ],
        ),
      ),
    );
  }
}
