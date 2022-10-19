// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, sort_child_properties_last

import 'package:firstpg/Pages/chat/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class Chat3 extends StatefulWidget {
  Chat3({Key? key}) : super(key: key);

  @override
  State<Chat3> createState() => _Chat3State();
}

class _Chat3State extends State<Chat3> {
  bool showTextField = false;

  List<Message> messageList = [
    Message(
      text: "Hey!",
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: "Hi!",
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: "How are you?",
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: true,
    ),
    Message(
      text: "I am fine",
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: "How are you?",
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: "I am fine too!",
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: true,
    ),
  ];

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 7,
                ),
                Container(
                  //width: screenwidth * 0.98,
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
                                backgroundImage:
                                    AssetImage('assets/images/Ellie2.png'),
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
                                    color: Color.fromARGB(255, 63, 194, 67),
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
                              Text("Akshata Gupta",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "@gupta_09",
                                style: GoogleFonts.poppins(
                                    textStyle:
                                        TextStyle(fontWeight: FontWeight.w300)),
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
                SizedBox(height: 19),
              ],
            ),

            // Chat list builder
            Expanded(
              child: GroupedListView(
                elements: messageList,
                groupBy: (Message message) => DateTime(
                  message.date.year,
                  message.date.month,
                  message.date.day,
                ),
                groupHeaderBuilder: (Message message) => SizedBox(
                  height: 50,
                  child: Align(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "sent on",
                          style: GoogleFonts.poppins(
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.w400)),
                        ),
                        Text(
                          "${DateFormat.EEEE().format(message.date)} at ${DateFormat.jm().format(message.date)}",
                          style: GoogleFonts.poppins(
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  ),
                ),
                itemBuilder: (context, Message message) => message.isSentByMe
                    ? RecieverWidget(message: message.text)
                    : SenderWidget(message: message.text),
              ),
            ),

            Container(
              child: showTextField ? MsgBarType() : MsgBarNone(),
            )
          ],
        ),
      ),
      bottomNavigationBar: bottomappbar(),
    );
  }

  // Widget oldTextField() {
  //   return Neumorphic(
  //     margin: EdgeInsets.all(10),
  //     style: NeumorphicStyle(
  //         shape: NeumorphicShape.concave,
  //         boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
  //         depth: -7,
  //         lightSource: LightSource.topLeft,
  //         color: Color(0xffEBF3FF)),
  //     child: Container(
  //       padding: EdgeInsets.only(left: 10, right: 10),
  //       child: TextFormField(
  //         controller: controller,
  //         onFieldSubmitted: (message) {
  //           messageList.add(
  //             Message(
  //               text: message,
  //               date: DateTime.now().subtract(Duration(minutes: 1)),
  //               isSentByMe: true,
  //             ),
  //           );

  //           setState(() {});

  //           controller.clear();
  //         },
  //         decoration: InputDecoration(
  //           prefixIcon: Icon(
  //             FontAwesomeIcons.smile,
  //             color: Colors.black,
  //           ),
  //           suffixIcon: Row(
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               Icon(
  //                 FontAwesomeIcons.paperclip,
  //                 color: Colors.black,
  //               ),
  //               SizedBox(
  //                 width: 6,
  //               ),
  //               Icon(FontAwesomeIcons.microphone, color: Colors.black),
  //             ],
  //           ),

  //           border: InputBorder.none,
  //           //labelText: "Enter the Brand Name",
  //           hintText: "Type here...",
  //           hintStyle: GoogleFonts.poppins(
  //               textStyle: TextStyle(
  //             //   color: Color(0xff2F3843),
  //             fontWeight: FontWeight.w400,
  //             fontSize: 15,
  //           )),
  //         ),

  //         //controller: _username,
  //       ),
  //       decoration: BoxDecoration(
  //         color: Color(0xffEBF3FF),
  //         // border: Border.all(color: Colors.black),
  //         borderRadius: BorderRadius.circular(10),
  //         gradient: LinearGradient(
  //           colors: [Colors.grey.shade300, Colors.white10],
  //           begin: Alignment.topCenter,
  //           end: Alignment.bottomCenter,
  //           stops: [0.0, 0.4],
  //           tileMode: TileMode.clamp,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget MsgBarNone() {
    return Neumorphic(
      margin: EdgeInsets.all(10),
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
          depth: -7,
          lightSource: LightSource.topLeft,
          color: Color(0xffEBF3FF)),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        height: 47.h,
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.smile,
              color: Colors.black,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  showTextField = true;
                });
              },
              child: Container(
                color: Colors.transparent,
                width: 254.w,
              ),
            ),
            Icon(
              FontAwesomeIcons.paperclip,
              color: Colors.black,
            ),
            SizedBox(
              width: 6.w,
            ),
            Icon(FontAwesomeIcons.microphone, color: Colors.black),
          ],
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
    );
  }

  Widget MsgBarType() {
    return Neumorphic(
      margin: EdgeInsets.all(10),
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
          depth: -7,
          lightSource: LightSource.topLeft,
          color: Color(0xffEBF3FF)),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: InkWell(
          onDoubleTap: () {
            setState(() {
              showTextField = false;
            });
          },
          child: Row(
            children: <Widget>[
              Flexible(
                child: TextFormField(
                  controller: controller,
                  onFieldSubmitted: (message) {
                    messageList.add(
                      Message(
                        text: message,
                        date: DateTime.now().subtract(Duration(minutes: 1)),
                        isSentByMe: true,
                      ),
                    );

                    setState(() {});

                    controller.clear();
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.paperclip,
                      color: Colors.black,
                    ),
                    // suffixIcon: Icon(
                    //   Icons.send,
                    //   color: Colors.black,
                    // ),

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
              ),
              GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  messageList.add(
                    Message(
                      text: controller.text,
                      date: DateTime.now().subtract(Duration(minutes: 1)),
                      isSentByMe: true,
                    ),
                  );

                  setState(() {});

                  controller.clear();
                },
                child: Icon(
                  Icons.send,
                  color: Colors.black,
                ),
              ),
            ],
          ),
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
    );
  }
}

class SenderWidget extends StatelessWidget {
  String message = "";

  SenderWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 21,
              ),
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/Ellie2.png'),
              ),
              SizedBox(
                width: 28,
              ),
              Container(
                padding: EdgeInsets.only(left: 8, top: 6, right: 10, bottom: 6),
                decoration: BoxDecoration(
                  color: Color(0xffEBF3FF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(2.5, 2.5), // changes position of shadow
                    ),
                    BoxShadow(
                      color: Color(0xffFFFFFF),
                      spreadRadius: 2.5,
                      blurRadius: 2.5,
                      offset: Offset(-1.5, -1.5), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Text(
                  message,
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
          SizedBox(height: 24),
        ],
      ),
    );
  }
}

class RecieverWidget extends StatelessWidget {
  String message = "";

  RecieverWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.all(11),
          padding: EdgeInsets.only(left: 10, top: 4, right: 8, bottom: 6),
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
            message,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

// To store data about the message, which will be later used in the sender and reciever widget
class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}
