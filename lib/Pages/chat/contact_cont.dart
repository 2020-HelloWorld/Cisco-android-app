import 'package:firstpg/Pages/chat/contact_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactsCont extends StatelessWidget {
  final int index;
  const ContactsCont({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          SizedBox(width: 22),
          Container(
            height: 50,
            width: 50,
            child: CircleAvatar(
              backgroundImage: NetworkImage(contacts[index]["icon"]),
              radius: 80,
            ),
            // decoration: BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //         topRight: Radius.circular(40.0),
            //         bottomRight: Radius.circular(40.0),
            //         topLeft: Radius.circular(40.0),
            //         bottomLeft: Radius.circular(40.0))),
            //child: Image.network(contacts[index]["icon"], fit: BoxFit.cover),
          ),
          SizedBox(width: 20), //network img
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
          SizedBox(width: 146.5),
          Icon(
            Icons.more_vert,
            color: Color(0xff969696),
          )
        ],
      ),
      SizedBox(height: 33),
    ]);
  }
}
