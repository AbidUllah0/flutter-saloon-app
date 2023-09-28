import 'package:flutter/material.dart';

class flagTextField extends StatelessWidget {
  const flagTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: '   +1  |  Enter Your Phone Number',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/flag.png',
              height: 32,
              width: 32,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
        ),
      ),
    );
  }
}