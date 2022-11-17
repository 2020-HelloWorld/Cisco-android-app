import 'package:firstpg/Pages/Dashboard/BrandDetails.dart';
import 'package:firstpg/Pages/HomePage.dart';
import 'package:firstpg/Pages/login/brand_signup_s.dart';
import 'package:firstpg/Pages/login/influencer_details.dart';
import 'package:firstpg/services/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import './AnalyticsPages/likes_Analytics.dart';
import './AnalyticsPages/Comments.dart';
import 'AnalyticsPages/Follower_analytics.dart';
import 'AnalyticsPages/Reach_analytics.dart';

class InfluencerAnalytics extends StatefulWidget {
  InfluencerAnalytics({Key? key}) : super(key: key);

  @override
  State<InfluencerAnalytics> createState() => _InfluencerAnalyticsState();
}

class _InfluencerAnalyticsState extends State<InfluencerAnalytics> {
  // firebase services variables
  var _services = FirebaseServices();

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment(0.0, -0.68),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: screenwidth * 0.28,
                      ),
                      Image(
                        image: AssetImage('assets/images/logo.png'),
                        width: 175,
                        height: 61,
                      ),
                      SizedBox(
                        width: screenwidth * 0.16,
                      ),
                      Icon(Icons.notifications_sharp)
                    ],
                  ),
                  SizedBox(
                    height: screenheight * 0.002,
                  ),
                  Text(
                    "Analytics Dashboard",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xff2F3843),
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenheight * 0.04,
                  ),
                  Container(
                    height: screenheight * 0.8,
                    width: screenwidth * 0.97,
                    //margin: EdgeInsets.all(10),
                    // padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(),
                    child: Card(
                        color: Color(
                          (0xffEBF3FF),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        elevation: 20,
                        child: DefaultTabController(
                          length: 4,
                          child: Scaffold(
                            backgroundColor: Color(0xffEBF3FF),
                            body: Padding(
                              padding: const EdgeInsets.only(top: 7.0),
                              child: Column(
                                children: [
                                  Container(
                                      color: Color(0xffEBF3FF),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0.0, top: 40, bottom: 10),
                                      )),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    decoration: BoxDecoration(
                                      color: Color(0xffEBF3FF),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 10,
                                            spreadRadius: 5,
                                            offset: Offset(10, 10))
                                      ],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)),
                                      // border: Border.all(
                                      //   color: Colors.black,
                                      // ),
                                    ),
                                    height: screenheight * 0.66,
                                    width: screenwidth * 0.95,
                                    child: Column(
                                      children: [
                                        TabBar(
                                            isScrollable: true,
                                            indicatorWeight: 20,
                                            indicator: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              //color: hexToColor(primaryColorDark),
                                              boxShadow: [
                                                const BoxShadow(
                                                  color: Color(0xFFBEBEBE),
                                                  offset: Offset(0, 0),
                                                  blurRadius: 12,
                                                  spreadRadius: -10,
                                                ),
                                                const BoxShadow(
                                                  color: Color(0xffF0F8FF),
                                                  offset: Offset(0, 0),
                                                  blurRadius: 12,
                                                  spreadRadius: 9,
                                                ),
                                              ],
                                            ),
                                            indicatorSize:
                                                TabBarIndicatorSize.label,
                                            tabs: [
                                              Tab(
                                                child: Container(
                                                  padding: EdgeInsets.all(6),
                                                  height: 25,
                                                  //alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffEBF3FF),
                                                    // border: Border.all(color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(24),
                                                            topLeft:
                                                                Radius.circular(
                                                                    24)),
                                                  ),
                                                  child: Text("Reach",
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          color:
                                                              Color(0xff2F3843),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                        ),
                                                      )),
                                                ),
                                              ),
                                              Tab(
                                                child: Container(
                                                  padding: EdgeInsets.all(6),
                                                  height: 25,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "Followers",
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                      color: Color(0xff2F3843),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12,
                                                    )),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffEBF3FF),
                                                    // border: Border.all(color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(24),
                                                            topLeft:
                                                                Radius.circular(
                                                                    24)),
                                                  ),
                                                ),
                                              ),
                                              Tab(
                                                child: Container(
                                                  padding: EdgeInsets.all(6),
                                                  height: 25,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "Likes",
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                      color: Color(0xff2F3843),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12,
                                                    )),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffEBF3FF),
                                                    // border: Border.all(color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(24),
                                                            topLeft:
                                                                Radius.circular(
                                                                    24)),
                                                  ),
                                                ),
                                              ),
                                              Tab(
                                                child: Container(
                                                  padding: EdgeInsets.all(6),
                                                  height: 25,
                                                  alignment: Alignment.center,
                                                  child: Text("Comments",
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          color:
                                                              Color(0xff2F3843),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                        ),
                                                      )),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffEBF3FF),
                                                    // border: Border.all(color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(24),
                                                            topLeft:
                                                                Radius.circular(
                                                                    24)),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                        Expanded(
                                          child: TabBarView(children: [
                                            ReachPage(),
                                            FollowersPage(),
                                            LikesPage(),
                                            CommentsPage(),
                                          ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              Container(
                  alignment: Alignment(0, 1),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Ellie2.png'),
                    radius: 50,
                  )),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: bottomappbar(),
    );
  }
}
