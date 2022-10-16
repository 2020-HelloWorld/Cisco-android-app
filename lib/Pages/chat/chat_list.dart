import 'package:firstpg/Pages/chat/contact_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottombar.dart';
import 'contact_cont.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    // debugPrint(screenWidth.toString());
    // debugPrint(screenHeight.toString());
    return Scaffold(
      backgroundColor: const Color(0xffEBF3FF),
      body: SingleChildScrollView(
        // Expanded was removed here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(
                  top: 37.h,
                  left: 22.w,
                ), //top: screenHeight * 0.03, left: screenWidth * 0.03
                child: Text(
                  "Contacts",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700),
                  ),
                )),
            SizedBox(height: 25.h), //height: 0.035 * screenHeight
            Padding(
              padding: EdgeInsets.only(left: 22.w), //left: screenWidth * 0.03
              child: Container(
                width: 322.w, //screenWidth * 0.9
                height: 39, //screenWidth * 0.9
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search, color: Color(0xff5C5858)),
                      border: InputBorder.none,
                      hintText: 'search',
                    ),
                    // controller: _username,
                  ),
                ),
                // child: Row(
                //   children: [
                //     SizedBox(width: 15.w),
                //     Text("search",
                //         style: GoogleFonts.poppins(
                //             textStyle: TextStyle(
                //                 fontWeight: FontWeight.w400,
                //                 color: Color(0xff5C5858)))),
                //     SizedBox(width: 223.w), //screenWidth * 0.65
                //     Icon(Icons.search, color: Color(0xff5C5858))
                //   ],
                // ),
                //im looking for a better sol fr the search bar....which can be implemented to all pgs.
                decoration: BoxDecoration(
                  color: Color(0xffB58BFF),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 35), //height: 0.049 * screenHeight
            Container(
              //height: 900,
              child: Column(
                children: List.generate(contacts.length, (index) {
                  return ContactsCont(
                    index: index,
                  );
                }),
              ),
            ),
            //bottomappbar(),
          ],
        ),
      ),
      bottomNavigationBar: bottomappbar(),
    );
  }
}
