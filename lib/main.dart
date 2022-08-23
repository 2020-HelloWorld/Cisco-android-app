import 'package:firstpg/Pages/Dashboard/BrandDashboard.dart';
import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'Pages/login/otp_login/myHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins'
      ),
      home: BrandDashboard()//MyHomePage(title: 'Hello',),
    );
  }
}