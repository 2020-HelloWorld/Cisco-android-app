import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_charts/flutter_charts.dart' as charts;

class FollowersPage extends StatefulWidget {
  const FollowersPage({Key? key}) : super(key: key);

  @override
  State<FollowersPage> createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: Column(children: [
        SizedBox(
          height: screenheight * 0.001,
        ),
        Row(
          children: [
            SizedBox(width: screenwidth * 0.077),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 7,
                lightSource: LightSource.topLeft,
                color: Color(0xffEBF3FF),
              ),
              child: Container(
                width: 310,
                height: 130,
                child: Image.asset('assets/images/bar_chart.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenheight * 0.02,
        ),
        Row(
          children: [
            SizedBox(
              width: screenwidth * 0.077,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 7,
                lightSource: LightSource.topLeft,
                color: Color(0xffEBF3FF),
              ),
              child: Container(
                width: 145,
                height: 123,
                child: Image.asset('assets/images/PieChart.png'),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 7,
                lightSource: LightSource.topLeft,
                color: Color(0xffEBF3FF),
              ),
              child: Container(
                width: 145,
                height: 123,
                child: Image.asset('assets/images/Horizontal_BarChart.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenheight * 0.02,
        ),
        Row(
          children: [
            SizedBox(
              width: screenwidth * 0.1,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 7,
                lightSource: LightSource.topLeft,
                color: Color(0xffEBF3FF),
              ),
              child: Container(
                width: 126,
                height: 55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenheight * 0.0002,
                    ),
                    Text("Posts",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xff2F3843),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        )),
                    Text("241",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: screenwidth * 0.1,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 7,
                lightSource: LightSource.topLeft,
                color: Color(0xffEBF3FF),
              ),
              child: Container(
                width: 126,
                height: 55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenheight * 0.0002,
                    ),
                    Text("Followers",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xff2F3843),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        )),
                    Text("83K",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: screenheight * 0.02),
        Row(
          children: [
            SizedBox(
              width: screenwidth * 0.1,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 7,
                lightSource: LightSource.topLeft,
                color: Color(0xffEBF3FF),
              ),
              child: Container(
                width: 126,
                height: 55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenheight * 0.0002,
                    ),
                    Text("Following",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xff2F3843),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        )),
                    Text("1065",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: screenwidth * 0.1,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 7,
                lightSource: LightSource.topLeft,
                color: Color(0xffEBF3FF),
              ),
              child: Container(
                width: 126,
                height: 55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenheight * 0.0002,
                    ),
                    Text("Reach",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xff2F3843),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        )),
                    Text("324K",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
