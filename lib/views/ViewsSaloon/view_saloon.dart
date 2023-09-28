import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/SelectServices/select_services.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

import '../HomeScreen/components/categories_list.dart';
import 'components/customBottomSheet.dart';

class ViewAllSaloon extends StatelessWidget {
  const ViewAllSaloon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: customAppBar('Categories'),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.all(30),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            topLeft: Radius.circular(35),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectServices(),
                  ),
                );
              },
              child: CategoriesList(
                image: 'assets/images/frame1.png',
                color: Color(0xffFFD4D5),
                text: 'Hair Cut',
              ),
            ),
            InkWell(
              onTap: () {
                buildShowModalBottomSheet(context);
              },
              child: CategoriesList(
                image: 'assets/images/frame2.png',
                color: Color(0xffE0DBFF),
                text: 'Shaves',
              ),
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
      ),
    );
  }
}
