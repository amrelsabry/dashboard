import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({super.key, this.icon, this.color, this.text});
  final IconData? icon;
  final Color? color;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: 250,
        height: 120,
        child: Card(
          color: color,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(icon, size: 40),
                const SizedBox(width: 16),
                Text(
                  text!, 
                  style: TextStyle(fontSize: 24)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



    // // Card Widget
    //       Wrap(
    //         spacing: 16,
    //         runSpacing: 16,
    //         children: [
    //           DashboardCard(color: Colors.amber, icon: Icons.message,),
    //           DashboardCard(icon:Icons.cancel,color: Colors.red),
    //           DashboardCard(icon:Icons.check_circle,color: Colors.green),
    //           DashboardCard(
    //            icon: Icons.content_paste_search_outlined,
    //            color: Colors.orange,
    //           ),
    //         ],
    //       ),