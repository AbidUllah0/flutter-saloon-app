import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar() {
  return AppBar(
    backgroundColor: AppColors.appBackgroundColor,
    title: Text('Ibne Riead'),
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.orangeAccent,
        backgroundImage: AssetImage(
          'assets/images/barbar1.png',
        ),
      ),
    ),
    actions: [
      Container(
        margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.grey.shade400,
            ),
          ),
          child: Stack(
            children: [
              Icon(Icons.notifications_none),
              Positioned(
                right: 3,
                  top: 2,
                  child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
              ))
            ],
          ))
    ],
  );
}
