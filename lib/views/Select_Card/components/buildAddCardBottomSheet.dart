import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/your_appointment/components/customCardContainer.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:barber_saloon_app/widgets/customTextField.dart';
import 'package:flutter/material.dart';
import '../../CongratulationScreen/congratulation_screen.dart';

Future<dynamic> buildAddCardShowModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Container(
        height: 620,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: AppColors.appBackgroundColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add New Card'),
                  Icon(Icons.cancel_outlined),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  CustomCardContainer(cardColor: Colors.blue),
                  SizedBox(height: 15,),
                  CustomTextField(
                      labelText: 'Card Name', hintText: 'Abid Ullah'),
                  SizedBox(height: 15,),
                  CustomTextField(
                      labelText: 'Card Number',
                      hintText: '2598 2365 1253 1073'),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                            labelText: 'Expiry Date', hintText: '12/24'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                            labelText: 'CVC/CVV', hintText: '****'),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  CustomButton(
                      text: 'Save',
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CongratulationScreen(),),);
                      },
                      color: AppColors.btnColor),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
