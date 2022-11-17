import 'package:firstpg/Pages/Dashboard/BrandDashboard.dart';
import 'package:firstpg/Pages/Dashboard/BrandDetails.dart';
import 'package:firstpg/Pages/DashboardHome.dart';
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
Color _colorContainer = Color((0xffEBF3FF));
Color _colorContainer1 = Color((0xffEBF3FF));
Color _colorContainer2 = Color((0xffEBF3FF));
Color _colorContainer3 = Color((0xffEBF3FF));
Color _colorContainer4 = Color((0xffEBF3FF));
Color _colorContainer5 = Color((0xffEBF3FF));
Color _colorContainer6 = Color((0xffEBF3FF));

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
              height: 18,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(
                (0xffEBF3FF),
              )),
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              height: 650,
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
                            Ink(
                              child: InkWell(
                                child: Container(
                                    height: 27,
                                    width: 114,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(8.5714),
                                      color: _colorContainer,
                                    ),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.5714),
                                      ),
                                      color: _colorContainer,
                                      elevation: 10,
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
                                    )),
                                onTap: () {
                                  setState(() {
                                    _colorContainer =
                                        _colorContainer == Color(0xffB58BFF)
                                            ? Color(0xffEBF3FF)
                                            : Color(0xffB58BFF);
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Ink(
                              child: InkWell(
                                child: Container(
                                    height: 27,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(8.5714),
                                      color: _colorContainer1,
                                    ),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.5714),
                                      ),
                                      color: _colorContainer1,
                                      elevation: 10,
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
                                    )),
                                onTap: () {
                                  setState(() {
                                    _colorContainer1 =
                                        _colorContainer1 == Color(0xffB58BFF)
                                            ? Color(0xffEBF3FF)
                                            : Color(0xffB58BFF);
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            InkWell(
                              child: Container(
                                  height: 27,
                                  width: 76,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(8.5714)),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.5714),
                                    ),
                                    color: _colorContainer2,
                                    elevation: 10,
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
                                  )),
                              onTap: () {
                                setState(() {
                                  _colorContainer2 =
                                      _colorContainer2 == Color(0xffB58BFF)
                                          ? Color(0xffEBF3FF)
                                          : Color(0xffB58BFF);
                                });
                              },
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Ink(
                              child: InkWell(
                                child: Container(
                                    height: 27,
                                    width: 83,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.5714)),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.5714),
                                      ),
                                      color: _colorContainer3,
                                      elevation: 10,
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
                                    )),
                                onTap: () {
                                  setState(() {
                                    _colorContainer3 =
                                        _colorContainer3 == Color(0xffB58BFF)
                                            ? Color(0xffEBF3FF)
                                            : Color(0xffB58BFF);
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Ink(
                              child: InkWell(
                                child: Container(
                                    height: 27,
                                    width: 73,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.5714)),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.5714),
                                      ),
                                      color: _colorContainer4,
                                      elevation: 10,
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
                                    )),
                                onTap: () {
                                  setState(() {
                                    _colorContainer4 =
                                        _colorContainer4 == Color(0xffB58BFF)
                                            ? Color(0xffEBF3FF)
                                            : Color(0xffB58BFF);
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Ink(
                              child: InkWell(
                                child: Container(
                                    height: 27,
                                    width: 96,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.5714)),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.5714),
                                      ),
                                      color: _colorContainer5,
                                      elevation: 10,
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
                                    )),
                                onTap: () {
                                  setState(() {
                                    _colorContainer5 =
                                        _colorContainer5 == Color(0xffB58BFF)
                                            ? Color(0xffEBF3FF)
                                            : Color(0xffB58BFF);
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Ink(
                              child: InkWell(
                                child: Container(
                                    height: 27,
                                    width: 96,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.5714)),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.5714),
                                      ),
                                      color: _colorContainer6,
                                      elevation: 10,
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
                                    )),
                                onTap: () {
                                  setState(() {
                                    _colorContainer6 =
                                        _colorContainer6 == Color(0xffB58BFF)
                                            ? Color(0xffEBF3FF)
                                            : Color(0xffB58BFF);
                                  });
                                },
                              ),
                            ),
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
                                        "Free",
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
                                    height: 1,
                                  ),
                                  Text(
                                    "unlimited searches",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      color: Color(0xff2F3843),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    )),
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
                                        "Pay as you go",
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
                                      "Rs. 80/- per Influencer",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        color: Color(0xff2F3843),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
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
                                        "Premium",
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
