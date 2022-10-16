import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: screenwidth * 0.01,
          ),
          Icon(Icons.dehaze),
          SizedBox(
            width: screenwidth * 0.2,
          ),
          Image(
            image: AssetImage('assets/images/logo.png'),
            width: 175,
            height: 61,
          ),
          SizedBox(
            width: screenwidth * 0.2,
          ),
          Icon(Icons.notifications_sharp)
        ],
      ),
    );
  }
}
