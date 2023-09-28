import 'package:barber_saloon_app/views/HomeScreen/components/categories_text.dart';
import 'package:flutter/material.dart';

import '../../ViewsSaloon/view_saloon.dart';
import 'categories_list.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoriesText(
          catText: 'Categories',
          viewText: 'View All',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ViewAllSaloon(),
              ),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoriesList(
              image: 'assets/images/frame1.png',
              color: Color(0xffFFD4D5),
              text: 'Hair Cut',
            ),
            CategoriesList(
              image: 'assets/images/frame2.png',
              color: Color(0xffE0DBFF),
              text: 'Shaves',
            ),
            CategoriesList(
              image: 'assets/images/frame3.png',
              color: Color(0xffCCEEFF),
              text: 'Hair Color',
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ],
    );
  }
}
