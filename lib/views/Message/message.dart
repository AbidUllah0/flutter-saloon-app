import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/Message/components/call_section.dart';
import 'package:barber_saloon_app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'components/chat_section.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabColtroller = TabController(length: 2, vsync: this);

    return Scaffold(
      appBar: customAppBar('Message'),
      backgroundColor: AppColors.appBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(20),
              color: AppColors.btnColor,
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: TabBar(
                  automaticIndicatorColorAdjustment: false,
                  controller: _tabColtroller,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffF2F1FF),
                  ),
                  tabs: [
                    Container(
                        height: 50,
                        width: 180,
                        child: Tab(
                          text: 'Chat',
                        )),
                    Container(
                      height: 50,
                      width: 160,
                      child: Tab(
                        text: 'Call',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: _tabColtroller,
                children: [
                  ChatSectioin(),
                  CallSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
