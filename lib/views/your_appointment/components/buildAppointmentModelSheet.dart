import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import '../../Select_Card/add_new_card.dart';
import 'customCardContainer.dart';

Future<dynamic> buildAppointmentModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: 759,
        width: MediaQuery.of(context).size.width,
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
                  Text('Payment Method'),
                  Icon(Icons.cancel_outlined),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height /2.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      CustomCardContainer(cardColor: Colors.blue,),
                      SizedBox(height: 15,),
                      Card(
                        color: Colors.white,
                        elevation: 0.8,
                        shadowColor: Colors.white30,
                        child: ListTile(
                          leading: Image.asset(
                            'assets/images/paypal.png',
                          ),
                          title: Text('PayPal'),
                          trailing: Radio(
                            value: 1,
                            groupValue: 1,
                            onChanged: (Object? value) {},
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      CustomButton(
                        text: 'Pay Now',
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectCard(),),);
                        },
                        color: AppColors.btnColor,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
