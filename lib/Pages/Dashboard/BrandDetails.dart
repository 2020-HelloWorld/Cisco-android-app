import 'package:firstpg/Pages/Dashboard/DashboardHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BrandDetails extends StatelessWidget {
  const BrandDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              DashboardHeader(),
              SizedBox(height: 30),
              Container(
                width: 480,
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: TextFormField(
                    decoration: InputDecoration(border: InputBorder.none),
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
              SizedBox(height: 31),
              ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 31, right: 31, top: 31, bottom: 31),
                      child: Container(
                        width: 312,
                        height: 200.12,
                        decoration: BoxDecoration(
                            color: Color(0xffEBF3FF),
                            borderRadius: BorderRadius.circular(12.73)),
                        child: Column(
                          children: [
                            Container(
                              width: 312,
                              height: 137.52,
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'Cisco-android-app\assets\images\india-flag-icon.png'), //The actual img is not available.
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 46,
                                        height: 43,
                                        color: Colors.black,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
