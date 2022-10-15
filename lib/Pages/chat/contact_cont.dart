import 'package:firstpg/Pages/chat/chat2.dart';
import 'package:firstpg/Pages/chat/contact_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactsCont extends StatelessWidget {
  final int index;
  const ContactsCont({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return Column(children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Chat2()));
        },
        child: Container(
          color: Colors.transparent,
          child: Row(
            children: [
              SizedBox(width: 22.w), //width: screenWidth * 0.03
              CircleAvatar(
                backgroundImage: AssetImage(contacts[index]["icon"]),
                radius: 30,
              ),
              SizedBox(width: 20.w), //width: 0.045 * screenWidth
              Column(
                children: [
                  Text("Name Here",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontWeight: FontWeight.w600))),
                  Text("user_name",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontWeight: FontWeight.w300))),
                ],
              ),
              //SizedBox(width: 135.w), //width: 0.4 * screenWidth
              Padding(
                padding: EdgeInsets.only(left: 146.5.w),
                child: Icon(
                  Icons.more_vert,
                  color: Color(0xff969696),
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(height: 33.h),
    ]);
  }
}
