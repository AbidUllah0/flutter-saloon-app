import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/HomeScreen/components/categories_text.dart';
import 'package:barber_saloon_app/views/HomeScreen/components/custom_home_textfield.dart';
import 'package:barber_saloon_app/views/HomeScreen/components/home_appBar.dart';
import 'package:barber_saloon_app/views/Select_barber/select_barber.dart';
import 'package:flutter/material.dart';
import 'components/barbarVertData.dart';
import 'components/categories.dart';
import 'components/explore_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        appBar: homeAppBar(),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 6,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    color: Color(0xff6F45F0),
                  ),
                  child: CustomHomeTextField(),
                ),
                Positioned(
                  top: 100,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                      color: Colors.white,
                    ),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          ExploreData(),
                          SizedBox(
                            height: 10,
                          ),
                          Categories(),
                          SizedBox(
                            height: 10,
                          ),
                          CategoriesText(
                            catText: 'Freelance Barbar',
                            viewText: 'View All',
                            onPressed: () {},
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          BarbarVertData( ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
