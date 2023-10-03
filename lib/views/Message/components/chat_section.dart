import 'package:flutter/material.dart';

class ChatSectioin extends StatelessWidget {
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

  List trailList = [
    'just now',
    '20 min ago',
    '50 min ago',
    '2 days ago',
    '1 week ago ',
    '15 jun 2023',
    '10 jan 2023'
  ];
  static String subTitle = 'Hello Sir, How are you?';

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
                subtitle: Text(subTitle),
                trailing: Text(trailList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
