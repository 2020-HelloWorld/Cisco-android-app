// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously

import 'package:firstpg/Pages/login/signup.dart';
import 'package:firstpg/services/firebase_services.dart';
import 'package:flutter/material.dart';

import '../Dashboard/DashboardTest.dart';
import 'brand_details.dart';
import 'brand_details.dart';
import 'brand_signup_s.dart';

class BrandSignup extends StatefulWidget {
  const BrandSignup({Key? key}) : super(key: key);

  @override
  State<BrandSignup> createState() => _BrandSignupState();
}

class _BrandSignupState extends State<BrandSignup> {
  //Text Editing controller are used to get input from the form filds
  TextEditingController _email = new TextEditingController();
  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _password2 = new TextEditingController();
  bool? terms = false;
  bool isLoading = false;

  // Firebase services variables
  var _service = FirebaseServices();

  Future<void> signup() async {
    print(_username.text);
    print(_email.text);
    print(_password.text);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DashBoard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEBF3FF),
        body: Container(
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.white10, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.4],
              tileMode: TileMode.clamp,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      border: InputBorder.none,
                      labelText: "Enter the Brand Name",
                      hintText: "Brand Name",
                    ),
                    controller: _username,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade300, Colors.white10],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.4],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),

                // SizedBox(height: ,width: ,)

                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.mail),
                        labelText: "Enter Email",
                        hintText: "Email"),
                    controller: _email,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade300, Colors.white10],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.4],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.lock),
                        labelText: "Enter New Pasword",
                        hintText: "Password"),
                    controller: _password,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade300, Colors.white10],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.4],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.lock),
                        labelText: "Confirm your Pasword",
                        hintText: "Password"),
                    controller: _password2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade300, Colors.white10],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.4],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                        value: this.terms,
                        shape: CircleBorder(),
                        onChanged: (bool? value) {
                          setState(() {
                            this.terms = value;
                          });
                        }),
                    Text(
                      "Agree to terms and condition",
                      style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 60,
                  width: 200,
                  child: TextButton(
                    child: isLoading
                        ? CircularProgressIndicator()
                        : Text(
                            "Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                    onPressed: () async {
                      setState(() => isLoading = true);

                      if (_username.text != "" &&
                          _email.text != "" &&
                          _password.text != "" &&
                          _password2.text == _password.text) {
                        if (this.terms == false) {
                          debugPrint("Agree to terms and condition");

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text("Please Agree to terms and conditions"),
                              duration: Duration(milliseconds: 800),
                            ),
                          );

                          setState(() => isLoading = false);
                        } else {
                          // Updating database before navigating to next page.

                          var error = await _service.signUpWithEmailAndPassword(
                              _email.text, _password2.text);

                          if (error != true) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(error.toString()),
                              ),
                            );
                            setState(() => isLoading = false);
                            return;
                          }

                          var error1 = await _service.insertInitialData(
                              "brand", _email.text, _username.text);

                          if (error1 != true) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    "An error has occured... please try again"),
                                duration: Duration(milliseconds: 800),
                              ),
                            );
                            setState(() => isLoading = false);
                            return;
                          }

                          setState(() => isLoading = false);

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        }
                      } else {
                        debugPrint("Enter Valid Information");
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Please Enter Valid Information"),
                            duration: Duration(milliseconds: 800),
                          ),
                        );

                        setState(() => isLoading = false);
                      }
                    },
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.shade700.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(2, 2),
                            spreadRadius: 3,
                            blurRadius: 5)
                      ]),
                )
              ],
            ),
          ),
        ));
  }
}
