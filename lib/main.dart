//import 'package:firstpg/Pages/Dashboard/BrandDashboard.dart';
//import 'package:firstpg/Pages/Dashboard/BrandDetails.dart';
import 'package:firstpg/Pages/chat/chat_list.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'Pages/Dashboard/BrandDetailsProfile.dart';
import 'Pages/HomePage.dart';
import 'Pages/login/otp_login/myHomePage.dart';
import 'Pages/login/otp_login/otpPages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // builder: (context, child) => ResponsiveWrapper.builder(
        //       BouncingScrollWrapper.builder(context, child!),
        //       maxWidth: 1200,
        //       minWidth: 450,
        //       defaultScale: true,
        //       breakpoints: [
        //         const ResponsiveBreakpoint.resize(450, name: MOBILE),
        //         const ResponsiveBreakpoint.autoScale(800, name: TABLET),
        //         const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
        //         const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        //         const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        //       ],
        //     ),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: HomePage() //MyHomePage(title: 'Hello',),
        );
  }
}
