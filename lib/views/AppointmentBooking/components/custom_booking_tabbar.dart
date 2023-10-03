import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/AppointmentBooking/components/all_section.dart';
import 'package:flutter/material.dart';

class CustomBookingTabbar extends StatefulWidget {
  const CustomBookingTabbar({super.key});

  @override
  State<CustomBookingTabbar> createState() => _CustomBookingTabbarState();
}

class _CustomBookingTabbarState extends State<CustomBookingTabbar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Column(
      children: [
        Container(
          color: AppColors.btnColor,
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            controller: _tabController,
            tabs: [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Upcoming',
              ),
              Tab(
                text: 'Completed',
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 1.35,
          child: TabBarView(
            controller: _tabController,
            children: [
              AllSection(),
              AllSection(),
              AllSection(),
            ],
          ),
        ),
      ],
    );
  }
}
