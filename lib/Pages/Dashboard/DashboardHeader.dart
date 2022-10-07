import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('assets/images/logo.png'),
          width: 175,
          height: 61,
        ),
      ],
    );
  }
}
