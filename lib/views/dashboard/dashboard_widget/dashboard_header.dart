
import 'package:flutter/material.dart';

class DashBoardHeader extends StatelessWidget {
  const DashBoardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // header
          Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            DateTime.now().toString().split(' ').first,
            style: TextStyle(fontSize: 29, color: Colors.grey[700]),
          ),
       
        
        ],
      ),
    );
  }
}
