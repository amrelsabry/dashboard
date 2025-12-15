import 'package:egaila_contracts_app/views/dashboard/dashboard_widget/charts_card.dart';
import 'package:egaila_contracts_app/views/dashboard/dashboard_widget/dashboard_card.dart';
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
         Expanded(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // text Header
              DashBoardHeader(),
              const SizedBox(height: 16,),
              // card info
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DashboardCard(color: Colors.amber,icon: Icons.message,text: "10",),
                  DashboardCard(color: Colors.red.shade700,icon: Icons.cancel,text: "0",),
                  DashboardCard(color: Colors.green,icon: Icons.check_circle,text: "9",),
                  DashboardCard(color: Colors.yellowAccent,icon: Icons.access_time_outlined,text: "2",),
                ],
              ),
             const SizedBox(height: 16,),
              // charts card
              Row(
                children: [
                  Expanded(child: ChartsCard()),
                   const SizedBox(width: 10,),
                  Expanded(child: ChartsCard()),

              
                ],
              ),
             

            
            ],
           ),
         ),
        ],
      ),
    );
  }
}



