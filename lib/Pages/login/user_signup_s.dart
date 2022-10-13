import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import './influencer_details.dart';
import 'package:intl/intl.dart';

final TextEditingController _timeController = TextEditingController();

class LoginPage1 extends StatefulWidget {
  const LoginPage1({Key? key}) : super(key: key);

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment(0.0, -0.61),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome To Interra",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xff2F3843),
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Please fill the following details",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xff2F3843),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  // ),
                  height: 56,
                ),

                Column(
                  children: [
                    Card(
                      elevation: 15,
                      margin: EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      color: Color(0xffEBF3FF),
                      child: Container(
                        margin: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xffEBF3FF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Neumorphic(
                              margin: EdgeInsets.all(10),
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(15)),
                                  depth: -4,
                                  lightSource: LightSource.topLeft,
                                  color: Color(0xffEBF3FF)),
                              child: Container(
                                padding: EdgeInsets.all(2),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      icon: Icon(Icons.person),
                                      border: InputBorder.none,
                                      labelText: "Name",
                                      hintStyle: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        color: Color(0xff2F3843),
                                        fontWeight: FontWeight.w200,
                                        fontSize: 15,
                                      ))),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffEBF3FF),
                                  // border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.grey.shade300,
                                      Colors.white10
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: [0.0, 0.4],
                                    tileMode: TileMode.clamp,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              children: [
                                Neumorphic(
                                  margin: EdgeInsets.all(10),
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(15)),
                                      depth: -4,
                                      lightSource: LightSource.topLeft,
                                      color: Color(0xffEBF3FF)),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 7),
                                    width: 179.5,
                                    // margin: EdgeInsets.all(10),
                                    child: TextFormField(
                                        controller: _date,
                                        textAlign: TextAlign.left,
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.calendar_month),
                                          border: InputBorder.none,
                                          hintText: "Date of Birth",
                                          hintStyle: GoogleFonts.poppins(
                                            textStyle: (TextStyle(
                                              color: Color(0xff2F3843),
                                              fontWeight: FontWeight.w200,
                                              fontSize: 15,
                                            )),
                                          ),
                                        ),
                                        onTap: () async {
                                          DateTime? pickedDate =
                                              await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(1950),
                                                  lastDate: DateTime(2022));
                                          if (pickedDate != null) {
                                            setState(() {
                                              _date.text =
                                                  DateFormat('yyyy-MM-dd')
                                                      .format(pickedDate);
                                            });
                                          }
                                        }),

                                    //dateCtl.text = date.toIso8601String();},
                                    // controller: _email,

                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.grey.shade300,
                                          Colors.white10
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        stops: [0.0, 0.4],
                                        tileMode: TileMode.clamp,
                                      ),
                                    ),
                                  ),
                                ),
                                Neumorphic(
                                  margin: EdgeInsets.all(10),
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(15)),
                                      depth: -4,
                                      lightSource: LightSource.topLeft,
                                      color: Color(0xffEBF3FF)),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 7),
                                    width: 100,
                                    child: TextFormField(
                                      textAlign: TextAlign.left,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Gender",
                                          hintStyle: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                            color: Color(0xff2F3843),
                                            fontWeight: FontWeight.w200,
                                            fontSize: 15,
                                          ))),
                                      // controller: _email,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.grey.shade300,
                                          Colors.white10
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        stops: [0.0, 0.4],
                                        tileMode: TileMode.clamp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Neumorphic(
                              margin: EdgeInsets.all(10),
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(15)),
                                  depth: -4,
                                  lightSource: LightSource.topLeft,
                                  color: Color(0xffEBF3FF)),
                              child: Container(
                                padding: EdgeInsets.all(1),
                                height: 100,
                                // margin: EdgeInsets.all(10),
                                child: TextFormField(
                                  minLines: 1,
                                  maxLines: 3,
                                  // allow user to enter 3 lines in textfield
                                  keyboardType: TextInputType.multiline,

                                  decoration: InputDecoration(
                                      icon: Icon(Icons.person),
                                      border: InputBorder.none,
                                      labelText: "Bio",
                                      hintText: "Bio",
                                      hintStyle: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        color: Color(0xff2F3843),
                                        fontWeight: FontWeight.w200,
                                        fontSize: 15,
                                      ))),
                                  //controller: _username,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffEBF3FF),
                                  // border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.grey.shade300,
                                      Colors.white10
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: [0.0, 0.4],
                                    tileMode: TileMode.clamp,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Card(
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
                                                influencer_details()));
                                    ;
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
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //SizedBox(height: 40,)
              ],
            ),
            Container(
                //alignment: Alignment(0,0),
                child: Image.asset(
              ('assets/images/login_img.png'),
            )),
          ],
        ),
      ),
    );
  }
}
