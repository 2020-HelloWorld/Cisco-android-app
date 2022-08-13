import 'package:flutter/material.dart';

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

  Future<void> signup() async{

    print(_email.text);
    print(_password.text);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body:  Container(
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      border: InputBorder.none,
                      labelText: "Enter Username",
                      hintText: "Username"
                  ),
                  controller: _username,
                ),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)
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
                      hintText: "Email"
                  ),
                  controller: _email,
                ),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20)
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
                      hintText: "Password"
                  ),
                  controller: _password,
                ),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20)
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
                      hintText: "Password"
                  ),
                  controller: _password,
                ),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              Container(
                height: 40,
                width: 100,
                child: FlatButton(
                  child: Text("Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  onPressed: (){
                    signup();
                  },
                ),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20)
                ),
              )
            ],
          ),
        )
    );
  }
  }



