import 'package:firstpg/Pages/Dashboard/BrandDashboard.dart';
import 'package:firstpg/Pages/DashboardHome.dart';
import 'package:firstpg/Pages/login/otp_login/otpPages/Dashboard.dart';
import 'package:firstpg/Pages/login/otp_login/otpPages/verify.dart';
import 'package:firstpg/Pages/login/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumericPad extends StatelessWidget {
  int screen;
  String choice;
  final Function(int) onNumberSelected;
  NumericPad(
      {required this.screen,
      required this.choice,
      required this.onNumberSelected,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 21),
      child: Container(
        width: 374,
        height: 254,
        decoration: BoxDecoration(color: Color(0xffEBEFF2)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 27, left: 16, right: 17, bottom: 38),
          child: Container(
            width: 341,
            height: 189,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height >
                          MediaQuery.of(context).size.width
                      ? MediaQuery.of(context).size.height * 0.05
                      : MediaQuery.of(context).size.width * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildNumber(1),
                      buildNumber(2),
                      buildNumber(3),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height >
                          MediaQuery.of(context).size.width
                      ? MediaQuery.of(context).size.height * 0.05
                      : MediaQuery.of(context).size.width * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildNumber(4),
                      buildNumber(5),
                      buildNumber(6),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height >
                          MediaQuery.of(context).size.width
                      ? MediaQuery.of(context).size.height * 0.05
                      : MediaQuery.of(context).size.width * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildNumber(7),
                      buildNumber(8),
                      buildNumber(9),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height >
                          MediaQuery.of(context).size.width
                      ? MediaQuery.of(context).size.height * 0.05
                      : MediaQuery.of(context).size.width * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildBackspace(),
                      buildNumber(0),
                      buildNext(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNumber(int number) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onNumberSelected(number);
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 109.23,
            height: 39.21,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4.4))),
            child: Center(
              child: Text(
                number.toString(),
                style: TextStyle(
                    fontFamily: 'Work Sans',
                    fontSize: 21.31,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBackspace() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onNumberSelected(-1);
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 109.23,
            height: 39.21,
            decoration: BoxDecoration(
                color: Color(0xffA9A9A9),
                borderRadius: BorderRadius.all(Radius.circular(4.4))),
            child: Center(
              child: Icon(Icons.backspace, size: 17.76, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNext(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (screen == 2) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    (choice != "login") ? SignUp() : DashboardRoot()));
          } else if (screen == 1 && choice == "create") {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Verify(),
                settings: const RouteSettings(arguments: 'create')));
          } else if (choice == "login")
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Verify(),
                settings: const RouteSettings(arguments: 'login')));
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 109.23,
            height: 39.21,
            decoration: BoxDecoration(
                color: Color(0xffB58BFF),
                borderRadius: BorderRadius.all(Radius.circular(4.4))),
            child: Center(
              child:
                  Icon(Icons.arrow_forward, size: 20.74, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
