import 'package:egaila_contracts_app/views/dashboard/dashboard_widget/side_bar.dart';
import 'package:flutter/cupertino.dart';
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
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16,
              ),
              child: Column(
                children: [
                  // header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dashboard",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        DateTime.now().toString().split(' ').first,
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  // Card Widget
                  Row(
                    children: [
                      SizedBox(
                        height: 120,
                        width: 250,
                        child: Card(
                          color: Color(0xffe8f6ff),
                          elevation: 5,
                          child: Icon(Icons.message),
                        ),
                      )
                    ],
                  ),


                
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
