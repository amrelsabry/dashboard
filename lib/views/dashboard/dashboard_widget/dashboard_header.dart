

import 'package:flutter/material.dart';

class DashBoardHeader extends StatelessWidget {
  const DashBoardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch, 
              children: [
                // header
                Wrap(
                  spacing: 100,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        fontSize: 29,
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
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    buildCard(Icons.message, Colors.blue),
                    buildCard(Icons.cancel, Colors.red),
                    buildCard(Icons.check_circle, Colors.green),
                    buildCard(
                      Icons.content_paste_search_outlined,
                      Colors.orange,
                    ),
                  ],
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget buildCard(IconData icon, Color color) {
  return SizedBox(
    width: 250,
    height: 120,
    child: Card(
      color: const Color(0xffe8f6ff),
      elevation: 5,
      child: Center(
        child: Icon(icon, color: color, size: 40),
      ),
    ),
  );
}