import 'package:firstpg/Pages/Dashboard/BrandDashboard.dart';
import 'package:firstpg/Pages/Dashboard/BrandInfluencerDashboard.dart';
import 'package:firstpg/Pages/DashboardHome.dart';
import 'package:flutter/material.dart';
import './user_signup_s.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class influencer_details extends StatefulWidget {
  const influencer_details({Key? key}) : super(key: key);

  @override
  State<influencer_details> createState() => _influencer_detailsState();
}

class _influencer_detailsState extends State<influencer_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Color(
            (0xffEBF3FF),
          )),
          child: Center(
              child: Column(children: [
            SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(
                (0xffEBF3FF),
              )),
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              height: 632,
              width: 342,
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
                child: Container(
                  padding: EdgeInsets.all(37),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //SizedBox(height: 29),
                        Text(
                          "Connect Socials",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.57),
                              ),
                              height: 50,
                              width: 50,
                              child: Card(
                                color: Color(0xffEBF3FF),
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.5714),
                                ),
                                child: Center(
                                  child: Icon(FontAwesomeIcons.instagram),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.57),
                              ),
                              height: 50,
                              width: 50,
                              child: Card(
                                color: Color(0xffEBF3FF),
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.5714),
                                ),
                                child: Center(
                                  child: Icon(FontAwesomeIcons.twitter),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.57),
                              ),
                              height: 50,
                              width: 50,
                              child: Card(
                                color: Color(0xffEBF3FF),
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.5714),
                                ),
                                child: Center(
                                  child: Icon(
                                    FontAwesomeIcons.youtube,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.57),
                              ),
                              height: 50,
                              width: 50,
                              child: Card(
                                color: Color(0xffEBF3FF),
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.5714),
                                ),
                                child: Center(
                                  child: Icon(FontAwesomeIcons.facebook),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17,
                        ),

                        Text(
                          "Type of Influencer",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                                height: 27,
                                width: 114,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(8.5714)),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.5714),
                                  ),
                                  color: Color(
                                    (0xffEBF3FF),
                                  ),
                                  elevation: 10,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(5.5734),
                                    splashColor: Color(0xffB58BFF),
                                    onTap: () {
                                      debugPrint('Card tapped.');
                                    },
                                    child: Column(children: [
                                      SizedBox(height: 3),
                                      Text(
                                        "Life Style",
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ]),
                                  ),
                                )),
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                                height: 27,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(8.5714)),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.5714),
                                  ),
                                  color: Color(
                                    (0xffEBF3FF),
                                  ),
                                  elevation: 10,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(5.5734),
                                    splashColor: Color(0xffB58BFF),
                                    onTap: () {
                                      debugPrint('Card tapped.');
                                    },
                                    child: Column(children: [
                                      SizedBox(height: 3),
                                      Text(
                                        "Journalist",
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ]),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                                height: 27,
                                width: 76,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(8.5714)),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.5714),
                                  ),
                                  color: Color(
                                    (0xffEBF3FF),
                                  ),
                                  elevation: 10,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(5.5734),
                                    splashColor: Color(0xffB58BFF),
                                    onTap: () {
                                      debugPrint('Card tapped.');
                                    },
                                    child: Column(children: [
                                      SizedBox(height: 3),
                                      Text(
                                        "Sports",
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ]),
                                  ),
                                )),
                            SizedBox(
                              width: 14,
                            ),
                            Container(
                                height: 27,
                                width: 83,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(8.5714)),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.5714),
                                  ),
                                  color: Color(
                                    (0xffEBF3FF),
                                  ),
                                  elevation: 10,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(5.5734),
                                    splashColor: Color(0xffB58BFF),
                                    onTap: () {
                                      debugPrint('Card tapped.');
                                    },
                                    child: Column(children: [
                                      SizedBox(height: 3),
                                      Text(
                                        "Health",
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ]),
                                  ),
                                )),
                            SizedBox(
                              width: 14,
                            ),
                            Container(
                                height: 27,
                                width: 73,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(8.5714)),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.5714),
                                  ),
                                  color: Color(
                                    (0xffEBF3FF),
                                  ),
                                  elevation: 10,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(5.5734),
                                    splashColor: Color(0xffB58BFF),
                                    onTap: () {
                                      debugPrint('Card tapped.');
                                    },
                                    child: Column(children: [
                                      SizedBox(height: 3),
                                      Text(
                                        "Food",
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ]),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                                height: 27,
                                width: 96,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(8.5714)),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.5714),
                                  ),
                                  color: Color(
                                    (0xffEBF3FF),
                                  ),
                                  elevation: 10,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(5.5734),
                                    splashColor: Color(0xffB58BFF),
                                    onTap: () {
                                      debugPrint('Card tapped.');
                                    },
                                    child: Column(children: [
                                      SizedBox(height: 3),
                                      Text(
                                        "Finance",
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ]),
                                  ),
                                )),
                            SizedBox(
                              width: 14,
                            ),
                            Container(
                                height: 27,
                                width: 96,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(8.5714)),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.5714),
                                  ),
                                  color: Color(
                                    (0xffEBF3FF),
                                  ),
                                  elevation: 10,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(5.5734),
                                    splashColor: Color(0xffB58BFF),
                                    onTap: () {
                                      debugPrint('Card tapped.');
                                    },
                                    child: Column(children: [
                                      SizedBox(height: 3),
                                      Text(
                                        "Gaming",
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ]),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        Center(
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              // margin: EdgeInsets.only(top: 20),
                              height: 60,
                              width: 200,
                              child: TextButton(
                                child: Text(
                                  "Continue",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    color: Color(0xff2F3843),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  )),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DashboardRoot()));
                                },
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple.shade700
                                      .withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade200,
                                        //offset: Offset(4,4),
                                        spreadRadius: 3,
                                        blurRadius: 5)
                                  ]),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            )
          ])),
        ),
      ),
    );
  }
}
