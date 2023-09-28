import 'package:flutter/material.dart';

class BottomReviewsData extends StatelessWidget {
  const BottomReviewsData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/rateStar.png'),
              Text(
                '  4.9 ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Text(
                '( 76 Reviews )',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff626262),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.map_outlined,
                color: Color(0xff6F45F0),
              ),
              Text(
                'Direction',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff626262),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
