import 'package:flutter/material.dart';

import 'DashboardHeader.dart';
import 'HorizontalList.dart';

class BrandDashboard extends StatelessWidget {
  const BrandDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Expanded(
          child: Column(
            children: [
              DashboardHeader(),
              SizedBox(height: 30,),
              Container(
                width: 480,
                  child: ListTile(
                    leading:Icon(Icons.search),
                    title: TextFormField(
                      decoration: InputDecoration(
                      border: InputBorder.none
                    ),),
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
              SizedBox(height: 50,),
              ListTile(
                title: Text(
                  "Trending",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                  ),
                ),
                trailing: Icon(Icons.arrow_forward,),
              ),
              HorizontalList(),
              SizedBox(height: 50,),
              ListTile(
                title: Text(
                  "Trending",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600
                  ),
                ),
                trailing: Icon(Icons.arrow_forward,),
              ),
              HorizontalList(),
              SizedBox(height: 50,),
              ListTile(
                title: Text(
                  "Trending",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600
                  ),
                ),
                trailing: Icon(Icons.arrow_forward,),
              ),
              HorizontalList(),
              SizedBox(height: 50,),

            ],
          ),
        )
      ),
    );
  }
}
