import 'package:barber_saloon_app/views/HomeScreen/home_screen.dart';
import 'package:barber_saloon_app/views/NearBySaloon/near_by_saloon.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  List _screens = [
    HomeScreen(),
    NearBySaloon(),
    Text('Screen 3'),
    Text('Screen 4'),
    Text('Screen 5'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
          selectedItemColor: Color(0xff6023E0),
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_rounded),
              label: 'Location',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
