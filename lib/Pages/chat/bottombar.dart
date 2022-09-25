import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bottomappbar extends StatefulWidget {
  const bottomappbar({super.key});

  @override
  State<bottomappbar> createState() => _bottomappbarState();
}

class _bottomappbarState extends State<bottomappbar> {
  int pageIndex = 0; //fr now this isnt necessary
  @override
  Widget build(BuildContext context) {
    List<IconData> iconItems = [
      //change package if u can.
      Icons.home,
      Icons.search,
      Icons.chat_rounded,
      Icons.account_circle_outlined
    ];
    return AnimatedBottomNavigationBar(
        backgroundColor: const Color(0xffEBF3FF),
        icons: iconItems,
        activeColor: Color(0xff000000),
        splashColor: Color.fromARGB(255, 85, 6, 222),
        inactiveColor: Color.fromARGB(255, 155, 117, 220),
        activeIndex: pageIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        gapWidth: 0,
        onTap: (index) {
          setTabs(index);
        });
  }

  setTabs(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
