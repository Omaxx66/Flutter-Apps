import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Stack(children: [
          Positioned(
              left: 0,
              top: 0,
              child: Image.asset(
                "assets/images/signup_top.png",
                width: 100,
              )),
          Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: 80,
              )),
          SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontFamily: 'F1',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
                    width: 220,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 60,
                    width: 300,
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          border: InputBorder.none,
                          labelText: "   Your email: ",
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 147, 15, 247),
                            fontSize: 15.0,
                          )),
                    ),
                    decoration: BoxDecoration(
                      borderRadius:
                          new BorderRadius.all(Radius.elliptical(200, 200)),
                      color: Color.fromARGB(255, 227, 194, 240),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 60,
                    width: 300,
                    margin: EdgeInsets.symmetric(horizontal: 12.0),
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          labelText: "   Password: ",
                          border: InputBorder.none,
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 147, 15, 247),
                            fontSize: 15.0,
                          )),
                    ),
                    decoration: BoxDecoration(
                      borderRadius:
                          new BorderRadius.all(Radius.elliptical(200, 200)),
                      color: Color.fromARGB(255, 227, 194, 240),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign up",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 98, 13, 129)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 15, horizontal: 120)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 51, 14, 82),
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap:(){
                          Navigator.pushNamed(context,"/login");
                        },
                        child: Text("log in",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 58, 56, 56),
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                              thickness: 1,
                              color: Color.fromARGB(255, 132, 23, 176))),
                      Text("OR",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 132, 23, 176),
                              fontWeight: FontWeight.bold)),
                      Expanded(
                          child: Divider(
                              thickness: 1,
                              color: Color.fromARGB(255, 132, 23, 176))),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromARGB(255, 132, 23, 176),
                            )),
                        child: SvgPicture.asset(
                          "assets/icons/facebook.svg",
                          color: Color.fromARGB(255, 132, 23, 176),
                          width: 20,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromARGB(255, 132, 23, 176),
                            )),
                        child: SvgPicture.asset(
                          "assets/icons/google-plus.svg",
                          color: Color.fromARGB(255, 132, 23, 176),
                          width: 20,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromARGB(255, 132, 23, 176),
                            )),
                        child: SvgPicture.asset(
                          "assets/icons/twitter.svg",
                          width: 20,
                          color: Color.fromARGB(255, 132, 23, 176),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
