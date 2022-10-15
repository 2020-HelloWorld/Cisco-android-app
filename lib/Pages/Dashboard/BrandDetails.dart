import 'package:firstpg/Pages/Dashboard/BrandDetailsContainer.dart';
import 'package:firstpg/Pages/Dashboard/BrandDetailsImgs.dart';
import 'package:firstpg/Pages/Dashboard/DashboardHeader.dart';
import 'package:firstpg/Pages/chat/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandDetails extends StatefulWidget {
  const BrandDetails({super.key});

  @override
  State<BrandDetails> createState() => _BrandDetailsState();
}

class _BrandDetailsState extends State<BrandDetails> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: SafeArea(
        child: SingleChildScrollView(
          // Expanded was removed.
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 18.h, left: 26.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.more_vert),
                    SizedBox(width: 70.w),
                    Image.asset("assets/images/logo.png",
                        width: 145, height: 43),
                    //try providing asset img.
                    SizedBox(width: 66.52),
                    Icon(
                      Icons.notifications,
                      color: Color(0xff354044),
                      size: 28,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 480.w,
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search an Influencer",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(Icons.filter_alt_rounded),
                ),
                decoration: BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9E9E9E).withOpacity(0.5),
                      spreadRadius: 1.5,
                      blurRadius: 1.5,
                      offset: Offset(-1.5, -1.5), // changes position of shadow
                    ),
                    BoxShadow(
                      color: Color(0xffFFFFFF),
                      spreadRadius: 0.2,
                      blurRadius: 0.2,
                      offset: Offset(1, 1), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [Colors.grey.shade300, Colors.white10],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.4],
                    tileMode: TileMode.clamp,
                  ),
                ),
              ),
              SizedBox(height: 31),
              Container(
                //height: 900,
                child: Column(
                  children: List.generate(infl.length, (index) {
                    return BrandDetailsCont(
                      index: index,
                    );
                  }),
                ),
                // child: ListView.builder(
                //   itemCount: 10,
                //   scrollDirection: Axis.vertical,
                //   itemBuilder: (context, index) {
                //     return BrandDetailsCont();
                //   },
                // ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomappbar(),
    );
  }
}
