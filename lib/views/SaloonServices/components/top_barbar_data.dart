import 'package:flutter/material.dart';

class TopBarbarData extends StatelessWidget {
  const TopBarbarData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Barbar 1',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: Color(0xffF2F1FF),
            ),
            child: Center(
              child: Text(
                'Open',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff6F45F0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
