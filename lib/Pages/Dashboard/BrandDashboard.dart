import 'package:firstpg/Pages/Dashboard/BrandDetails.dart';
import 'package:flutter/material.dart';

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
          child: Expanded(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.03),
            DashboardHeader(),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 480,
              child: ListTile(
                leading: Icon(Icons.search),
                title: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search an Infulencer",
                      border: InputBorder.none),
                ),
                trailing: Icon(Icons.filter_alt_rounded),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Colors.grey.shade300, Colors.white10],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 0.4],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),
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
            ListTile(
              title: Text(
                "Trending",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BrandDetails()));
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
        ),
      )),
    );
  }
}
