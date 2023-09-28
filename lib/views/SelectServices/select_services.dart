import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/SelectServices/components/select_dat_time.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:barber_saloon_app/widgets/custom_haircut_data.dart';
import 'package:flutter/material.dart';

class SelectServices extends StatelessWidget {
  const SelectServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: customAppBar('Select Services'),
      body: Column(
        children: [
          CustomHairCutData(),
        ],
      ),
    );
  }
}
