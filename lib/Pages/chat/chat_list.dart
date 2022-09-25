import 'package:firstpg/Pages/chat/contact_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xffEBF3FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 37, left: 22),
                    child: Text(
                      "Contacts",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Container(
                    width: 322,
                    height: 39,
                    child: Row(
                      // /mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 15),
                        Text("search",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff5C5858)))),
                        SizedBox(width: 223),
                        Icon(Icons.search, color: Color(0xff5C5858))
                      ],
                    ),
                    // child: ListTile(
                    //   leading: Icon(Icons.search),
                    //   title: TextFormField(
                    //     decoration: InputDecoration(border: InputBorder.none),
                    //   ),
                    //   trailing: Icon(Icons.filter_alt_rounded),
                    // ),
                    decoration: BoxDecoration(
                      color: Color(0xffB58BFF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Container(
                  height: 900,
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
        ),
      ),
      bottomNavigationBar: bottomappbar(),
    );
  }
}
