import 'package:firstpg/Pages/Dashboard/BrandDashboard.dart';
import 'package:firstpg/Pages/Dashboard/BrandDetails.dart';
import 'package:firstpg/Pages/chat/chat_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashboardRoot extends StatefulWidget {
  const DashboardRoot({super.key});

  @override
  State<DashboardRoot> createState() => DashboardRootstate();
}

class DashboardRootstate extends State<DashboardRoot> {
  Color mainColor = Color(0xff000000);
  //int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        // activeColor: ,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: ((context) {
                return CupertinoPageScaffold(
                  child: BrandDashboard(),
                );
              }),
            );
          case 1:
            return CupertinoTabView(
              builder: ((context) {
                return CupertinoPageScaffold(
                  child: SearchPage(),
                );
              }),
            );
          case 2:
            return CupertinoTabView(
              builder: ((context) {
                return CupertinoPageScaffold(
                  child: ContactList(),
                );
              }),
            );
          case 3:
            return CupertinoTabView(
              builder: ((context) {
                return CupertinoPageScaffold(
                  child: ProfilePage(),
                );
              }),
            );
          default:
            return CupertinoTabView(
              builder: ((context) {
                return CupertinoPageScaffold(
                  child: BrandDashboard(),
                );
              }),
            );
        }
      },
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(child: Text("Search Page")));
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(child: Text("Profile Page")));
  }
}
