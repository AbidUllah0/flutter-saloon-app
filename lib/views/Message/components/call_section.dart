import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CallSection extends StatelessWidget {
  List img = [
    'assets/images/pf1.png',
    'assets/images/pf2.png',
    'assets/images/pf3.png',
    'assets/images/pf4.png',
    'assets/images/pf5.png',
    'assets/images/pf6.png',
    'assets/images/pf7.png',
  ];
  List title = ['abid', 'asad', 'waleed', 'nazakat', 'asif', 'anees', "jabbar"];

  List subTitle = [
    'Incoming | 15 Jun 2023',
    'Outgoing  | 15 Jun 2023',
    'Incoming | 15 Jun 2023',
    'Outgoing  | 15 Jun 2023',
    'Incoming | 15 Jun 2023',
    'Outgoing  | 15 Jun 2023',
    'Incoming | 15 Jun 2023',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: img.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.asset(
                  img[index],
                ),
                title: Text(
                  title[index],
                ),
                subtitle: Row(
                  children: [
                    Icon(index==0 || index==2 || index==4
                        ? Icons.call_made
                        : Icons.call_received_outlined,
                    color: index==0 || index==2 || index==4 ? Color(0xffFFC02F) :AppColors.btnColor,
                    ),
                    Text(subTitle[index]),
                  ],
                ),
                trailing: Icon(
                  Icons.call,
                  color: AppColors.btnColor,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
