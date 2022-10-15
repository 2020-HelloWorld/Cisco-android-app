import 'package:firstpg/Pages/Dashboard/BrandDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'DashboardHeader.dart';
import 'HorizontalList.dart';

class BrandDashboard extends StatelessWidget {
  const BrandDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: SingleChildScrollView(
          child: Column(
        children: [
          DashboardHeader(),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Neumorphic(
            margin: EdgeInsets.all(10),
            style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                depth: -12,
                lightSource: LightSource.topLeft,
                color: Color(0xffEBF3FF)),
            child: Container(
              // color: Color(0xffEBF3FF),
              width: 400,
              child: ListTile(
                leading: Icon(Icons.search),
                title: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search Infulencers...",
                      border: InputBorder.none),
                ),
                trailing: Icon(Icons.filter_alt_rounded),
              ),
              decoration: BoxDecoration(
                color: Color(0xffEBF3FF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF9E9E9E).withOpacity(0.5),
                    spreadRadius: 1.5,
                    blurRadius: 1.5,
                    offset: Offset(-1.5, -1.5), // changes position of shadow
                  ),
                  BoxShadow(
                    color: Color(0xffEBF3FF),
                    spreadRadius: 0.2,
                    blurRadius: 0.2,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
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
          SizedBox(
            height: screenHeight * 0.02,
          ),
          ListTile(
            title: Text(
              "Trending",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BrandDetails()));
              },
            ),
          ),
          HorizontalList(),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          ListTile(
            title: Text(
              "Top Performing",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BrandDetails()));
                }),
          ),
          HorizontalList(),
          SizedBox(
            height: 50,
          ),
          ListTile(
            title: Text(
              "Trending",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BrandDetails()));
              },
            ),
          ),
          HorizontalList(),
          SizedBox(
            height: 50,
          ),
        ],
      )),
    );
  }
}
