//import 'package:firstpg/Pages/Dashboard/BrandDashboard.dart';
//import 'package:firstpg/Pages/Dashboard/BrandDetails.dart';

import 'package:device_preview/device_preview.dart';
import 'package:firstpg/Pages/Dashboard/BrandDetails.dart';
import 'package:firstpg/Pages/chat/chat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Pages/Dashboard/BrandDetailsProfile.dart';
import 'Pages/HomePage.dart';
import 'Pages/login/otp_login/myHomePage.dart';
import 'Pages/login/otp_login/otpPages/firstpage.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Poppins'),
          home: HomePage() //MyHomePage(title: 'Hello',),
          ),
      designSize: const Size(375, 812),
    );
  }
}
