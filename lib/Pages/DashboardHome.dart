import 'package:firstpg/Pages/Dashboard/BrandDashboard.dart';
import 'package:firstpg/Pages/Dashboard/BrandInfluencerDashboard.dart';
import 'package:firstpg/Pages/chat/chat_list.dart';
import 'package:flutter/material.dart';

import 'PersistantBottomBar.dart';

class DashboardRoot extends StatelessWidget {
  final _tab1navigatorKey = GlobalKey<NavigatorState>();
  final _tab2navigatorKey = GlobalKey<NavigatorState>();
  final _tab3navigatorKey = GlobalKey<NavigatorState>();
  final _tab4navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return PersistentBottomBarScaffold(
      items: [
        PersistentTabItem(
          tab: BrandInfDashboard(),
          icon: Icons.home,
          title: 'Home',
          color: Color(0xffB58BFF),
          navigatorkey: _tab1navigatorKey,
        ),
        PersistentTabItem(
          tab: BrandDashboard(),
          icon: Icons.search,
          title: 'Search',
          color: Color(0xffB58BFF),
          navigatorkey: _tab2navigatorKey,
        ),
        PersistentTabItem(
          tab: ContactList(),
          icon: Icons.chat_rounded,
          title: 'Chat',
          color: Color(0xffB58BFF),
          navigatorkey: _tab3navigatorKey,
        ),
        PersistentTabItem(
          tab: ProfilePage(),
          icon: Icons.person,
          title: 'Profile',
          color: Color(0xffB58BFF),
          navigatorkey: _tab4navigatorKey,
        ),
      ],
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
