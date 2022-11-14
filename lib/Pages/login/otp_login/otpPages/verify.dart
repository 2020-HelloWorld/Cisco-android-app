import 'package:firstpg/Pages/Dashboard/BrandDashboard.dart';
import 'package:firstpg/Pages/DashboardHome.dart';
import 'package:firstpg/Pages/login/otp_login/otpPages/Dashboard.dart';
import 'package:firstpg/Pages/login/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'numberbutton.dart';

class Verify extends StatefulWidget {
  Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  String code = "";
  @override
  Widget build(BuildContext context) {
    final choice = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 59, right: 115, left: 115),
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 145,
                  height: 43,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 26, right: 25),
              child: Container(
                height: 356,
                width: 324,
                decoration: BoxDecoration(
                    color: const Color(0xffEBF3FF),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffB4C1D5),
                        offset: Offset(12, 12),
                        blurRadius: 24,
                      ),
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 29, left: 104, right: 101.8),
                      child: Container(
                        width: 118.2,
                        height: 18.72,
                        child: Text(
                          "Verification",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily:
                                  'Poppins', //This font isnt even there in the sys.
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2F3843)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 26.28, left: 48, right: 47),
                      child: Container(
                        width: 229,
                        height: 35,
                        child: Text(
                          "Please enter the 4 digit code sent to you",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily:
                                  'Poppins', //This font isnt even there in the sys.
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2F3843)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          buildCodeNumberBox(
                              code.length > 0 ? code.substring(0, 1) : ""),
                          buildCodeNumberBox(
                              code.length > 1 ? code.substring(1, 2) : ""),
                          buildCodeNumberBox(
                              code.length > 2 ? code.substring(2, 3) : ""),
                          buildCodeNumberBox(
                              code.length > 3 ? code.substring(3, 4) : ""),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 48, left: 31, right: 29.16, bottom: 49.23),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => (choice == "create")
                                  ? SignUp()
                                  : BrandDashboard()));
                        },
                        child: Container(
                          width: 263.84,
                          height: 52.77,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    //innershadow is a prob :
                                    offset: Offset(8, 8),
                                    color: Color(0xffB4C1D5),
                                    blurRadius: 16)
                              ],
                              color: Color(0xffB58BFF),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(color: Color(0xff2F3843)),
                            ),
                          ),
                          // child: Row(
                          //   children: [
                          //     Padding(
                          //       padding: const EdgeInsets.only(
                          //           top: 18, left: 21, bottom: 17),
                          //       child: Image(
                          //         image: AssetImage('assets/india-flag-icon.png'),
                          //         width: 24,
                          //         height: 17,
                          //       ),
                          //     ),
                          //     //some small correvtions with padding i did....fr my own adjustment...it seems to be fitting properly now :
                          //     Padding(
                          //       padding: const EdgeInsets.only(
                          //           left: 5, bottom: 24, top: 2.5),
                          //       child: Container(
                          //           width: 6,
                          //           height: 3,
                          //           child: Icon(Icons.arrow_drop_down_outlined)),
                          //     ),
                          //     Padding(
                          //       padding: const EdgeInsets.only(
                          //           top: 13, bottom: 12, left: 7),
                          //       child: Container(
                          //           width: 160,
                          //           height: 27,
                          //           child: Padding(
                          //             padding:
                          //                 const EdgeInsets.only(left: 12, top: 5),
                          //             child: Text(code,
                          //                 textAlign: TextAlign.left,
                          //                 style: TextStyle(
                          //                     fontSize: 13, fontFamily: 'Poppins')),
                          //           )),
                          //     )
                          //   ],
                          // ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            NumericPad(
              onNumberSelected: (value) {
                setState(() {
                  if (value != -1) {
                    if (code.length < 4) code = code + value.toString();
                  } else
                    code = code.substring(0, code.length - 1);
                });
              },
              screen: 2,
              choice: choice,
            )
          ],
        ),
      ),
    );
  }

  Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 70,
        width: 50,
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xffEBF3FF),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffB4C1D5),
                  blurRadius: 16,
                  offset: Offset(8, 8),
                  spreadRadius: 1,
                )
              ]),
          child: Center(
            child: Text(
              codeNumber,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 21.31,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
