import 'package:flutter/material.dart';

class AllSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Image.asset('assets/images/appointment.png');
                }),
          ),
        ],
      ),
    );
  }
}
