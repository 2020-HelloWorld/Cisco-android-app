import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'numberbutton.dart';

class FirstPage1 extends StatefulWidget {
  const FirstPage1({super.key});

  @override
  State<FirstPage1> createState() => _FirstPage1State();
}

class _FirstPage1State extends State<FirstPage1> {
  String phonenumber = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 19, right: 115, left: 115),
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 145,
                  height: 43,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, left: 34, right: 34),
              child: Container(
                height: 453,
                width: 307,
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
                      padding:
                          const EdgeInsets.only(top: 19, left: 18, right: 16),
                      child: Container(
                        width: 130,
                        height: 30,
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily:
                                  'Poppins', //This font isnt even there in the sys.
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2F3843)),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 13, right: 38, left: 38),
                      child: Image(
                        image: AssetImage('assets/images/girlcushion.png'),
                        width: 231,
                        height: 239,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 38, left: 38),
                      child: Container(
                        width: 231,
                        height: 57,
                        child: Text(
                          "Please enter your phone number to receive a verification code to login and use Interra",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily:
                                  'Poppins', //This font isnt even there in the sys.
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2F3843)),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 18, left: 17, right: 22),
                      child: Container(
                        width: 268,
                        height: 52,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  //innershadow is a prob :
                                  offset: Offset(8, 8),
                                  color: Color(0xffB4C1D5),
                                  blurRadius: 16)
                            ],
                            color: Color(0xffEBF3FF),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, left: 21, bottom: 17),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/india-flag-icon.png'),
                                width: 24,
                                height: 17,
                              ),
                            ),
                            //some small correvtions with padding i did....fr my own adjustment...it seems to be fitting properly now :
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, bottom: 24, top: 2.5),
                              child: Container(
                                  width: 6,
                                  height: 3,
                                  child: Icon(Icons.arrow_drop_down_outlined)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 13, bottom: 12, left: 7),
                              child: Container(
                                  width: 160,
                                  height: 27,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 12, top: 5),
                                    child: Text(phonenumber,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Poppins')),
                                  )),
                            )
                          ],
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
                  if (value != -1)
                    phonenumber = phonenumber + value.toString();
                  else
                    phonenumber =
                        phonenumber.substring(0, phonenumber.length - 1);
                });
              },
              screen: 1,
            )
          ],
        ),
      ),
    );
  }
}
