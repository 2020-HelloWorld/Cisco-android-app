import 'package:firstpg/Pages/Dashboard/BrandDashboard.dart';
import 'package:firstpg/Pages/Dashboard/BrandDetails.dart';
import 'package:firstpg/Pages/login/brand_details.dart';
import './brand_signup_s.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Brand_details extends StatefulWidget {
  const Brand_details({Key? key}) : super(key: key);

  @override
  State<Brand_details> createState() => _Brand_detailsState();
}

bool checkBoxBooleanValueVariable = false;
bool checkBoxBooleanValueVariable1 = false;
bool checkBoxBooleanValueVariable2 = false;

class _Brand_detailsState extends State<Brand_details> {
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
              height: 725,
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
                          height: 30,
                        ),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            //height: 111,
                            // width: 200,
                            child: TextButton(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                    20.0))), // Rounded Checkbox
                                        value: checkBoxBooleanValueVariable,
                                        onChanged: (inputValue) {
                                          setState(() {
                                            checkBoxBooleanValueVariable =
                                                inputValue!;
                                            checkBoxBooleanValueVariable2 =
                                                false;
                                            checkBoxBooleanValueVariable1 =
                                                false;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Starter",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Color(0xff2F3843),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 46,
                                      ),
                                      Text(
                                        "599/-",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Color(0xff2F3843),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                        )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Text(
                                      "Feature explanation 1 ipsum loremFeature 1 ipsum lorem",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        color: Color(0xff2F3843),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffEBF3FF),
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
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            //height: 111,
                            // width: 200,
                            child: TextButton(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                    20.0))), // Rounded Checkbox
                                        value: checkBoxBooleanValueVariable1,
                                        onChanged: (inputValue) {
                                          setState(() {
                                            checkBoxBooleanValueVariable1 =
                                                inputValue!;
                                            checkBoxBooleanValueVariable =
                                                false;
                                            checkBoxBooleanValueVariable2 =
                                                false;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Pro",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Color(0xff2F3843),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 85,
                                      ),
                                      Text(
                                        "999/-",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Color(0xff2F3843),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                        )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Text(
                                      "Feature explanation 1 ipsum loremFeature 1 ipsum lorem",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        color: Color(0xff2F3843),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffEBF3FF),
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
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            //height: 111,
                            // width: 200,
                            child: TextButton(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                    20.0))), // Rounded Checkbox
                                        value: checkBoxBooleanValueVariable2,
                                        onChanged: (inputValue) {
                                          setState(() {
                                            checkBoxBooleanValueVariable2 =
                                                inputValue!;
                                            checkBoxBooleanValueVariable =
                                                false;
                                            checkBoxBooleanValueVariable1 =
                                                false;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Enterprise",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Color(0xff2F3843),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Text(
                                        "1999/-",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Color(0xff2F3843),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                        )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Text(
                                      "Feature explanation 1 ipsum loremFeature 1 ipsum lorem",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        color: Color(0xff2F3843),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffEBF3FF),
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
                        SizedBox(
                          height: 20,
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
                                              BrandDashboard()));
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
