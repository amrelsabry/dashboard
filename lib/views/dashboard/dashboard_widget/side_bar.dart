import 'package:egaila_contracts_app/views/dashboard/dashboard_widget/custom_buttons.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff023a4b),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              // logo
              Image.asset("assets/logo.png", width: 150),
              
              const SizedBox(height: 40),
              // Btn add ducoment
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfff7d16c),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.add), Text("New document")],
                ),
              ),
              const SizedBox(height: 40),
              // Button New document
              CustomButtons(
                text: "DashBoard",
                ontap: () {},
                icon: Icon(Icons.grid_view, color: Color(0xff6a95a2)),
              ),
              
              CustomButtons(
                text: "Documents",
                ontap: () {},
                icon: Icon(Icons.folder, color: Color(0xff6a95a2)),
              ),
              
              CustomButtons(
                text: "Templates",
                ontap: () {},
                icon: Icon(
                  Icons.folder_copy_outlined,
                  color: Color(0xff6a95a2),
                ),
              ),
              
              Spacer(),
              
              CustomButtons(
                text: "Help",
                ontap: () {},
                icon: Icon(Icons.help, color: Color(0xff6a95a2)),
              ),
              
              CustomButtons(
                text: "Search",
                ontap: () {},
                icon: Icon(Icons.search, color: Color(0xff6a95a2)),
              ),
            ],
          ),
        ),
      );
  }
}
