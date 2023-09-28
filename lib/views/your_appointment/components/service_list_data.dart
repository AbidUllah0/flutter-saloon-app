import 'package:flutter/material.dart';

class ServiceListData extends StatelessWidget {
  String serviceName;
  String? serviceTime;
  String servicePrice;

  ServiceListData(
      {required this.serviceName,
      this.serviceTime,
      required this.servicePrice});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          serviceName,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff626262),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              serviceTime!,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff626262),
              ),
            ),
            Text(
              servicePrice,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff222222),
              ),
            ),
          ],
        )
      ],
    );
  }
}
