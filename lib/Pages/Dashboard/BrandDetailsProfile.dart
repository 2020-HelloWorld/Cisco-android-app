import 'package:firstpg/Pages/chat/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstpg/Pages/chat/chat_list.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeight = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      // Image.network(
                      //     fit: BoxFit.fill,
                      //     width: 470,
                      //     height: 166,
                      //     'https://s3-alpha-sig.figma.com/img/4a05/4892/eb6f870de1b0fb28a5d392a4ad3736fe?Expires=1665964800&Signature=VCEPn5idqvd1uCeAFtYrt0O~nX~TQRvo4hkss6yZYZ7POSGSFW89FRW~BJ85q0hF4-532vhP-kHmGleY4Ih3EWYdsg2k-Ob9qYSxx0ONDn7s-UZK9kbHfcIUVgj2AjNuzRfR-rCCdL3ljrV5gnkrfoABKyYieHw-~WHJVW8aQluW~om7EjL1DSXcmQ48JZEztqvNf---8SrYvQXF0LswI6KSZopsy09wSVksyGUdpWacV4Fckvlvcil3ACwb3GtC0PnQcw5gxFt9PtG6rekrtrFxT3FRlIO7U3QdLzZK2CcfIBvBwAq4vJQKJleKAwsgQMsTIVhcEjcbtTwRuc6a9w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                      Image.asset(
                          fit: BoxFit.fill,
                          width: 470.w,
                          height: 166.h,
                          'assets/images/purple_back.png'),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 26.w, top: 32.h, right: 17.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.menu_rounded, color: Colors.black),
                            // Image.network(
                            //   width: 145,
                            //   height: 45,
                            //   color: Colors.black,
                            //   'https://s3-alpha-sig.figma.com/img/adbc/73d2/a83a90a76086b19a9b93e8b994b69e84?Expires=1665964800&Signature=Wz5lBFg1UxFXyMrF-jHZcBvRra~g6E-AGlJkaqrkZ1F66NWpIsekcsjRsN8URtWCCF-w3DpJhwGV41PZvNkN6eDJLGDOZLiUtHs0W3yRCUC-PpIJc2RmGzcXAFNLVOyvEbARUVYKUoVctK75LpyUwigYPCWf3sRb1g1jLetJiwv~zNfM4mA9BjLeNV4QEAU2jfCfhnF70Y2uOiCt-XQz76nHOhC1x~~JoAPZ9CIr637HtlZNXSbYX7mWrL6Vjr4AMRl-15J9ElRZr87VuOKnbPz2R1n0p-sLcGNeqT2ThV6dyj09YDtjXsi1guQVt~oR6wHiZYhrCWigTv3en2GonA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                            //   fit: BoxFit.cover,
                            // ),
                            Image.asset(
                                width: 145.w,
                                height: 45.h,
                                // color: Colors.black,
                                fit: BoxFit.cover,
                                'assets/images/logo.png'),
                            Container(
                              width: 44.w,
                              height: 44.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffE6EEFA),
                              ),
                              child: Icon(Icons.notifications_sharp,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 470.w,
                    // height: 900,
                    decoration: BoxDecoration(
                      color: Color(0xffEBF3FF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      // boxShadow: [
                      //   BoxShadow(
                      //     blurRadius: 30,
                      //     offset: Offset(-28, -28),
                      //     color: Colors.white,
                      //   ),
                      //   BoxShadow(
                      //     blurRadius: 30,
                      //     offset: Offset(28, 28),
                      //     color: Color(0xffA7A9AF),
                      //   ),
                      // ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 72.h),
                        Container(
                          width: 305.89.w,
                          height: 152.h,
                          decoration: BoxDecoration(
                            color: Color(0xffEBF3FF),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 30,
                                offset: Offset(-28, -28),
                                color: Colors.white,
                              ),
                              BoxShadow(
                                blurRadius: 30,
                                offset: Offset(28, 28),
                                color: Color.fromRGBO(180, 193, 213, 0.6),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 23.w, right: 31.8.w),
                            child: Row(
                              children: [
                                // SizedBox(width: 23),
                                Padding(
                                  padding: EdgeInsets.only(top: 30.h),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 50.h,
                                        //Asset img to be included
                                        // child: Image.network(
                                        //     fit: BoxFit.cover,
                                        //     width: 30,
                                        //     height: 20,
                                        //     'https://cdn-icons-png.flaticon.com/512/2190/2190466.png'),
                                        child: Image.asset(
                                          fit: BoxFit.cover,
                                          width: 30.w,
                                          height: 20.h,
                                          'assets/images/youtube.png',
                                        ),
                                      ),
                                      Text('5M',
                                          style: TextStyle(
                                            color: Color(0xff303944),
                                            fontSize: 32.sp,
                                            fontWeight: FontWeight.w800,
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 28.w),
                                Padding(
                                  padding: EdgeInsets.only(top: 28.h),
                                  child: Column(
                                    children: [
                                      Text('Virat Singh',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20.sp,
                                          )),
                                      Text('Male | 34 | Dehli ',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp,
                                          )),
                                      Text('#lifestyle #travel',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp,
                                          )),
                                      GestureDetector(
                                        child: Container(
                                          width: 170.w,
                                          height: 33.h,
                                          decoration: BoxDecoration(
                                            color: Color(0xffB58BFF),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                          child: Center(
                                            child: Text('Message',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14.sp,
                                                )),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ContactList()));
                                        },
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 14.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                width: 130.w,
                                height: 56.h,
                                decoration: BoxDecoration(
                                  color: Color(0xffEBF3FF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 30,
                                      offset: Offset(-12, -12),
                                      color: Colors.white,
                                    ),
                                    BoxShadow(
                                      blurRadius: 30,
                                      offset: Offset(12, 12),
                                      color: Color.fromRGBO(180, 193, 213, 0.7),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(FontAwesomeIcons.instagram,
                                        size: 28.5),
                                    Text('250K',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xff303944),
                                          fontSize: 24.sp,
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ],
                                )),
                            Container(
                              width: 130.w,
                              height: 56.h,
                              decoration: BoxDecoration(
                                color: Color(0xffEBF3FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 30,
                                    offset: Offset(-12, -12),
                                    color: Colors.white,
                                  ),
                                  BoxShadow(
                                    blurRadius: 30,
                                    offset: Offset(12, 12),
                                    color: Color.fromRGBO(180, 193, 213, 0.7),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.twitter,
                                    size: 28.5.sp,
                                    //color: Colors.white,
                                  ),
                                  Text('150K',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xff303944),
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w700,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Recent Posts',
                                style: GoogleFonts.poppins(
                                  color: Color(0xff303944),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                )),
                            Icon(Icons.arrow_forward, size: 26)
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          width: 325.w,
                          height: 310.h,
                          decoration: BoxDecoration(
                            color: Color(0xffEBF3FF),
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 30,
                                offset: Offset(-12, -12),
                                color: Colors.white,
                              ),
                              BoxShadow(
                                blurRadius: 30,
                                offset: Offset(12, 12),
                                color: Color.fromRGBO(180, 193, 213, 0.7),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 32.18.w, top: 9.57.h),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 31.31,
                                      backgroundImage: AssetImage(
                                          'assets/images/raashi_pfp.png'),
                                      // backgroundImage: NetworkImage(
                                      //     'https://s3-alpha-sig.figma.com/img/0569/264e/154c17586878211fe2a0ef1e0bfbb579?Expires=1665964800&Signature=d~0VQRe-uM1X37DIqpfO45qmcXacldT2Bb4f5qx6m8dSFeQLExb2iBAr9ygkM9mHaaWtwI0Vfp~cEQ6XoBI5SaKZgz8aPenVqClLC06H8fOuLv--Sflolvm-XhYvHFHAZQ0y54f756P88hqgXOM37tW9qFxBA9KyCJMe~6956bQnAU3uMAGJGkxdm7-w~qdOSkSWoiKoL3TVkUWQMDZNPDijfQS92dZ~PotsSrTptlVNUoY0oOamPZlLq74pNkBaiO0xwoyVfjOvmPfN2AFiDrHvYa6kT7m8gWBm7aD1sfGiS4fF3kp8BnBcfow6hcQ0~ztxIwZV52ZPTJsNwr-xtg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                                    ),
                                    SizedBox(width: 10.44.w),
                                    Column(
                                      children: [
                                        Text('Raashi hegde',
                                            style: GoogleFonts.poppins(
                                              color: Color(0xff303944),
                                              fontSize: 11.31.sp,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        Text('@raash_09',
                                            style: GoogleFonts.poppins(
                                              color: Color(0xff303944),
                                              fontSize: 9.57.sp,
                                              fontWeight: FontWeight.w300,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 7.83.h),
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(26.09),
                                  topRight: Radius.circular(26.09),
                                  bottomLeft: Radius.circular(26.09),
                                  bottomRight: Radius.circular(26.09),
                                ),
                                child: Image.asset(
                                  width: 304.w,
                                  height: 224.h,
                                  fit: BoxFit.none,
                                  'assets/images/raashi_pic.png',
                                ),
                                // child: Image.network(
                                //     width: 304,
                                //     height: 224,
                                //     fit: BoxFit.none,
                                //     'https://s3-alpha-sig.figma.com/img/c834/4fe5/2b8b117b297ae179fef8fdf269044389?Expires=1665964800&Signature=c44GKlmPlvsJGnPBbNONQ-ilcRl-2a2-PrpuTDG2aQqYAXEZIVS8a6Xm0KxlyjWctY4EHxgWNsUlqRexnfxIRuejJ2sRPaS4eY0G1SSeaGFLCC3h9I~xwlmvcoN~Jg6ui8OKPH0x-whfmUR0rii7oOuhpgQPZ847-AjHwQm9YPfi4xgLMhr9lKcybjG2EIjlGThKYprFNvadiB3Ba4CzWQc9ckX8cYGkj97xyUWkW6OmaEQb4oeoomr37SBZ7HtoU6iaZWXxGSsokXiFhztJy5u2k-3uTn98Rph3mW270DV~S0OQCCcCvSPVuplEFk9hu0SSE1F80DXOIxApP4XS2A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 24.h),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned.fill(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 115.h, left: 108.w, right: 108.w),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 30,
                            offset: Offset(-12, -12),
                            color: Colors.white,
                          ),
                          BoxShadow(
                            blurRadius: 30,
                            offset: Offset(12, 12),
                            color: Color.fromRGBO(180, 193, 213, 0.7),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/ProfilePageDude.jpg'),
                          // backgroundImage: NetworkImage(
                          //     'https://s3-alpha-sig.figma.com/img/b8f9/be02/68a6c513991732706d729694c537bd33?Expires=1665964800&Signature=KJQ~sCpZOPMF~lVFPxjRCDwh~~YEkHUXb9WYbYmRjl20x8mYKQz0FxmdlZCLi5Zd1sJsgkOQZ2BEkCOpfEtbKWrtTOeoPHpEkqpjPFjGYy-qVtvZoRNfC4KjS1cBW1z3JLEKFxGIKhhSCKzlHvQnTp5O88gxFXDogTqfBoaYIImfJjLAA5x6L-e-F6EyAdc0OcioV~hBhCQNleB0sj5xg5Vlov20yUh6uhW~SBIrA2NrLpOm2AwxfvnvR6AmMsC7IABLiMb89i7Z8rSapFmfz731N9uGNzMlZBGSdhD1~dD-x9EpuotGOGx8Dc5TNlYTtbQiFzZt-yvE5j8iADidHQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Positioned.fill(
              //     child: Align(
              //   alignment: Alignment.bottomCenter,
              //   child: bottomappbar(),
              // ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomappbar(),
    );
  }
}
