import 'package:egaila_contracts_app/views/dashboard/dashboard_widget/dashboard_header.dart';
import 'package:egaila_contracts_app/views/dashboard/dashboard_widget/side_bar.dart';
import 'package:flutter/material.dart';

class DashbordView extends StatelessWidget {
  const DashbordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // sideBar First Column
          SideBar(),
          // widget second  Column
          DashBoardHeader(),
        ],
      ),
    );
  }
}



