import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key, this.ontap, required this.text, required this.icon});
  final Function()? ontap;
  final String text;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        height: 35,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            const SizedBox(width: 15),
            Text(text, style: TextStyle( color: Color(0xff6a95a2),)),
          ],
        ),
      ),
    );
  }
}
