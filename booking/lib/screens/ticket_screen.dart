import 'package:booking/screens/ticket_mid.dart';
import 'package:booking/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/utils/app_info_list.dart';

import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "Ticket",
            style: Styles.headLineStyle1,
          ),
          Gap(AppLayout.getHeight(20)),
          const AppTicketTabs(firstTab: 'Sắp tới', secondTab: 'Đã đặt'),
          Gap(AppLayout.getHeight(20)),
          Center(
            child: Text(
              "Vé của bạn",
              style: Styles.headLineStyle2,
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
            child: TicketMid(
              ticket: ticketList[0],
            ),
          ),
          Center(
            child: Text(
              "Lịch sử đặt vé",
              style: Styles.headLineStyle2,
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: ticketList
                  .map((singleTicket) => TicketMid(ticket: singleTicket))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
