import 'package:firstpg/Pages/Dashboard/BrandDetailsImgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'BrandDetailsProfile.dart';

class BrandDetailsCont extends StatelessWidget {
  final int index;
  const BrandDetailsCont({Key? key, required this.index}) : super(key: key);
//   const BrandDetailsCont({Key? key, required this.index}) : super(key: key);

//   @override
//   State<BrandDetailsCont> createState() => _BrandDetailsContState();
// }

// class _BrandDetailsContState extends State<BrandDetailsCont> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 312,
          height: 200.12,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffFFFFFF), Color(0xffD6E3F3)]),
              //color: Color(0xffEBF3FF),
              borderRadius: BorderRadius.circular(12.73)),
          child: Stack(
            children: [
              Container(
                width: 312,
                height: 95.00,
                //color: Colors.amber,
                child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  children: <Widget>[
                    //Image asset must come here :
                    Image.asset(infl[index]["icon"], fit: BoxFit.cover),
                    Positioned(
                      left: 267,
                      bottom: 56.5,
                      right: 1,
                      top: 0,
                      child: Container(
                        width: 46,
                        height: 43,
                        //color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                infl[index]["Stars"],
                                style: GoogleFonts.poppins(
                                    color: Color(0xff354044),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color: Color(0xff354044),
                                size: 15.83,
                              ),
                              // CircleAvatar(
                              //   backgroundImage:
                              //       AssetImage(infl[index]["icon2"]),
                              //   radius: 80,
                              // ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 95,
                child: Container(
                  width: 312,
                  height: 105.00,
                  //color: Colors.black,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 55),
                        child: Container(
                          width: 118,
                          height: 19,
                          child: Text(infl[index]["name"],
                              style: GoogleFonts.poppins(
                                  color: Color(0xff2F3843),
                                  fontSize: 14.55,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 55),
                        child: Container(
                          width: 118,
                          height: 19,
                          child: Text(infl[index]["Tag1"],
                              style: GoogleFonts.poppins(
                                  color: Color(0xff2F3843),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 55),
                        child: Container(
                          width: 118,
                          height: 19,
                          child: Text(infl[index]["Tag2"],
                              style: GoogleFonts.poppins(
                                  color: Color(0xff2F3843),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      Container(
                        height: 31,
                        width: 312,
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            Container(
                              width: 80,
                              height: 34.89,
                              decoration: BoxDecoration(
                                  // boxShadow: [
                                  //   const BoxShadow(
                                  //     color: Color(0xffB4C1D5),
                                  //   ),
                                  //   const BoxShadow(
                                  //     color: Color(0xffEBF3FF),
                                  //     spreadRadius: -12.0,
                                  //     blurRadius: 12.0,
                                  //   ),
                                  // ],
                                  // gradient: LinearGradient(
                                  //     begin: Alignment.topCenter,
                                  //     end: Alignment.bottomCenter,
                                  //     colors: [
                                  //       Color(0xffB4C1D5),
                                  //       Color(0xffEBF3FF)
                                  //     ]),
                                  //Inner shadow is a prob fr now.
                                  color: Color(0xffEBF3FF),
                                  borderRadius: BorderRadius.circular(6.44)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  //hafta add profile img here :
                                  Icon(Icons.person, size: 17.49),
                                  Text(
                                    infl[index]["followers"],
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.21,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                            GestureDetector(
                              child: Container(
                                  width: 177,
                                  height: 31,
                                  decoration: BoxDecoration(
                                      color: Color(0xffD0B5FF),
                                      borderRadius:
                                          BorderRadius.circular(6.44)),
                                  child: Center(
                                    child: Text(
                                      "View Profile",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff2F3843),
                                          fontSize: 14.55,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Profile()));
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 20.55,
                  left: 10,
                  right: 200.26,
                  bottom: 60.55,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 90,
                          spreadRadius: 2,
                          offset: Offset(-3, 3))
                    ]),

                    //Shadows need to be better :
                    child: CircleAvatar(
                      backgroundImage: AssetImage(infl[index]["icon2"]),
                      radius: 80,
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: 28.8),
      ],
    );
  }
}
