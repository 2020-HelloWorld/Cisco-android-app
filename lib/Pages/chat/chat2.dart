import 'package:firstpg/Pages/chat/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Chat2 extends StatelessWidget {
  const Chat2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: screenwidth * 0.98,
                        child: Card(
                          color: Color(0xffEBF3FF),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40.0),
                                bottomRight: Radius.circular(40.0)),
                          ),
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 18,
                              ),
                              Row(children: [
                                SizedBox(
                                  width: 22,
                                ),
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage(
                                          'assets/images/contact1.jpg'),
                                    ),
                                    Positioned(
                                      top: 31,
                                      left: 32,
                                      child: Container(
                                        margin: EdgeInsets.all(4),
                                        width: 14,
                                        height: 14,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(255, 63, 194, 67),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 24,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Name Here",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.w600))),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "user_name",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w300)),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 146.5),
                                Icon(
                                  Icons.more_vert,
                                  color: Color.fromARGB(255, 155, 117, 220),
                                  size: 32,
                                ),
                              ]),
                              SizedBox(
                                height: 19,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 19,
                width: screenwidth * 0.1,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenwidth * 0.4,
                  ),
                  Text(
                    "sent on",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
                //width: screenwidth * 0.4,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenwidth * 0.3,
                  ),
                  Text(
                    "monday at 7:56pm",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 21,
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('assets/images/contact1.jpg'),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 8, top: 6, right: 10, bottom: 6),
                    decoration: BoxDecoration(
                      color: Color(0xffEBF3FF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset:
                              Offset(2.5, 2.5), // changes position of shadow
                        ),
                        BoxShadow(
                          color: Color(0xffFFFFFF),
                          spreadRadius: 2.5,
                          blurRadius: 2.5,
                          offset:
                              Offset(-1.5, -1.5), // changes position of shadow
                        ),
                      ],
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.withOpacity(0.5),
                      //     spreadRadius: 3,
                      //     blurRadius: 3,
                      //     offset: Offset(0, 2), // changes position of shadow
                      //   ),
                      // ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Hey!",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(11),
                    padding:
                        EdgeInsets.only(left: 10, top: 6, right: 8, bottom: 6),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 155, 117, 220),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Hi",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(11),
                    padding:
                        EdgeInsets.only(left: 10, top: 6, right: 8, bottom: 6),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 155, 117, 220),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "how are you?",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 21,
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('assets/images/contact1.jpg'),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 8, top: 6, right: 10, bottom: 6),
                    decoration: BoxDecoration(
                      color: Color(0xffEBF3FF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "I am fine",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 21,
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('assets/images/contact1.jpg'),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 8, top: 6, right: 10, bottom: 6),
                    decoration: BoxDecoration(
                      color: Color(0xffEBF3FF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "How are you?",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(11),
                    padding:
                        EdgeInsets.only(left: 10, top: 6, right: 8, bottom: 6),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 155, 117, 220),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "I am fine too!",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenheight * 0.04,
              ),
              Neumorphic(
                margin: EdgeInsets.all(10),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                    depth: -7,
                    lightSource: LightSource.topLeft,
                    color: Color(0xffEBF3FF)),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        FontAwesomeIcons.smile,
                        color: Colors.black,
                      ),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            FontAwesomeIcons.paperclip,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(FontAwesomeIcons.microphone,
                              color: Colors.black),
                        ],
                      ),

                      border: InputBorder.none,
                      //labelText: "Enter the Brand Name",
                      hintText: "Type here...",
                      hintStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        //   color: Color(0xff2F3843),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      )),
                    ),

                    //controller: _username,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffEBF3FF),
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade300, Colors.white10],
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
        ),
      ),
      bottomNavigationBar: bottomappbar(),
    );
  }
}
