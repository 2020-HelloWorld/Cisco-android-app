import 'package:cisco/Pages/login/user_signup.dart';
import 'package:flutter/material.dart';

import 'brand_signup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top:0.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.login_rounded,size: 40,),
                    Text("  | ",style: TextStyle(
                      fontSize: 50
                    ),),
                    Text("SignUp",style: TextStyle(
                        fontSize: 30
                    ),)
                  ],
                )
              ),
              Container(
                margin: EdgeInsets.only(left:100,top:40),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                height: 500,
                width: 500,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      child: TabBar(
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),

                          tabs: [
                            Tab(child: Container(
                              height:50,
                          width: 400,
                          alignment: Alignment.center,
                          child:Text(
                            "Brand",
                            style: TextStyle(
                                color: Colors.red
                            ),
                          ),
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                        ),
                            ),

                            Tab(child: Container(
                              child:Text(
                                "Influencer",
                                style: TextStyle(
                                    color: Colors.red
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                            ),
                            ),
                          ]
                      ),
                    ),

                    Expanded(
                      child: TabBarView(
                        children: [
                          BrandSignup(),
                          UserSignup(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}

