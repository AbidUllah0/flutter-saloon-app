import 'package:flutter/material.dart';


class HorizontalImages extends StatelessWidget {
  const HorizontalImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/images/Facebook.png'),
        Image.asset('assets/images/Google.png'),
        Image.asset('assets/images/Twitter.png'),
        Image.asset('assets/images/Instagram.png'),
      ],
    );
  }
}
