import 'package:barber_saloon_app/views/SaloonServices/components/about_me_section.dart';
import 'package:barber_saloon_app/views/SaloonServices/components/services_section.dart';
import 'package:flutter/material.dart';

import 'gallery_section.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          color: Color(0xff6F45F0),
          child: TabBar(

            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            controller: _tabController,
            labelPadding: EdgeInsets.symmetric(horizontal: 15),

            tabs: [
              Tab(
                child: Text(
                  'About',
                ),
              ),
              Tab(
                child: Text('Services'),
              ),
              Tab(
                child: Text('Gallery'),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2.3,
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
            physics: AlwaysScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              AboutMeSection(),
              ServicesSection(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GallerySection(),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
