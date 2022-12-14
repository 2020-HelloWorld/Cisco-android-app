import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './login/otp_login/otpPages/firstpage.dart';
import './login/otp_login/otpPages/firstpage_new_user.dart';

import 'login/signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: screenheight * 0.03,
                      ),
                      Card(
                        color: Color(0xffEBF3FF),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenheight * 0.023,
                            ),
                            Row(children: [
                              SizedBox(
                                width: screenwidth * 0.064,
                              ),
                              Image.asset(
                                'assets/images/logo.png',
                              ),
                              SizedBox(
                                width: screenwidth * 0.064,
                              ),
                            ]),
                            SizedBox(
                              height: screenheight * 0.023,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            color: Color(0xffEBF3FF),
                            child: Image.asset(
                              'assets/images/firstpageimg.png',
                              width: screenwidth * 0.7,
                              height: screenheight * 0.36,
                            ),
                          )),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Let's Get Started",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xff2F3843),
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (6.0),
                      ),
                      Container(
                        height: 57,
                        width: 279,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore, Lorem ipsum dolor sit ",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff2F3843),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton(
                          child: Text('Create Account',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xff2F3843),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              textAlign: TextAlign.center),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffB58BFF),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              elevation: 20,
                              shadowColor: Color(0xffC8B4D5)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FirstPage1()));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton(
                          child: Text('Login',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xff2F3843),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              textAlign: TextAlign.center),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffEBF3FF),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              elevation: 20,
                              shadowColor: Color(0xffC8B4D5)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FirstPage()));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                  // SizedBox(width: 40,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
