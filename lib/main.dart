import 'package:egaila_contracts_app/views/dashboard/dashbord_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Egaila Contracts App',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: const DashbordView(),
    );
  }
}

