import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_container/responsive_container.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins'
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      backgroundColor: Color(0xffEBF3FF),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children: [
                    SizedBox(height: 7,),
                    Card(
                      color: Color(0xffEBF3FF),
                      elevation: 10,
                      shape: RoundedRectangleBorder(borderRadius :BorderRadius.only( bottomLeft: Radius.circular(40.0),bottomRight: Radius.circular(40.0)),
                       ),
                      child: Column(
                        children: [
                          SizedBox(height:18,),

                          Row(children:
                          [SizedBox(width: 40,) ,Image.asset('assets/images/logo.png',),SizedBox(width: 40,),]
                          ),
                          SizedBox(height: 18,)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),),
                        child: Image.asset('assets/images/firstpageimg.png',)
                    ),
                    SizedBox(height: 15.0,),

                    Text("Let's Get Started",style: GoogleFonts.poppins(textStyle: TextStyle(color: Color(0xff2F3843),fontWeight: FontWeight.w600,fontSize: 30,),
                    ),
                    ),
                    SizedBox(height: (6.0),),
                    Container(
                      height: 57 ,
                      width: 279,
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore, Lorem ipsum dolor sit ",
                        style: GoogleFonts.poppins(textStyle: TextStyle(color: Color(0xff2F3843),fontWeight: FontWeight.w400,fontSize: 12,),),textAlign: TextAlign.center,),

                    ),
                    SizedBox(height: 32.0,),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        child: Text('Create Account', style: GoogleFonts.poppins(textStyle: TextStyle(color: Color(0xff2F3843),fontWeight: FontWeight.w600,fontSize: 16,),),textAlign:TextAlign.center),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffB58BFF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15))),
                            elevation: 20,
                            shadowColor: Color(0xffC8B4D5)

                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 18,),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        child: Text('Login', style: GoogleFonts.poppins(textStyle: TextStyle(color: Color(0xff2F3843),fontWeight: FontWeight.w600,fontSize: 16,),),textAlign:TextAlign.center),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffEBF3FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15))),
                            elevation: 20,
                            shadowColor: Color(0xffC8B4D5)

                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 20,)
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
