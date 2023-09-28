import 'package:barber_saloon_app/views/your_appointment/components/customCardContainer.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_text.dart';
import 'components/buildAddCardBottomSheet.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Add New Card'),
      backgroundColor: AppColors.appBackgroundColor,
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            topLeft: Radius.circular(35),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Select Your Card',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardContainer(
              cardColor: Colors.blue,
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                Text('Use as the Payment Method'),
              ],
            ),
            CustomCardContainer(
              cardColor: Color(0xffF13507),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Add New Card',
              onPressed: () {
                buildAddCardShowModalBottomSheet(context);
              },
              color: AppColors.btnColor,
            ),
          ],
        ),
      ),
    );
  }
}
