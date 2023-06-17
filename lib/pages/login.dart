import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EditableText.debugDeterministicCursor,
        home: SafeArea(
          child: Scaffold(
              body: Stack(
                children: [
                  Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset("assets/images/main_top.png",width: 100,)),
                  Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset("assets/images/login_bottom.png",width: 100,)),
                   SingleChildScrollView(
                     child: SizedBox(
                      width: double.infinity,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text("Login",
                          style: TextStyle(
                            fontFamily:'F1' ,
                              fontSize: 30,
                              fontWeight:FontWeight.bold,
                              color: Colors.grey[800],
                          ),),
                        ),
                        SvgPicture.asset("assets/icons/login.svg",width: 280,),
                        SizedBox(height: 50,),
                        Container(
                          height: 60,
                          width: 300,
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.symmetric(horizontal: 18.0),
                          child: TextField(
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              icon: Icon(Icons.email),
                              border: InputBorder.none,
                              labelText: "    email: ",
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 147, 15, 247),
                                fontSize: 15.0,
                              )
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.all(Radius.elliptical(200, 200)),
                            color: Color.fromARGB(255, 227, 194, 240),
                          ),
                        ),
                        SizedBox(height: 35.0,),
                        Container(
                          height: 60,
                          width: 300,
                          margin: EdgeInsets.symmetric(horizontal: 18.0),
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
                              )
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.all(Radius.elliptical(200, 200)),
                            color: Color.fromARGB(255, 227, 194, 240),
                          ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(onPressed: (){},
                         child: Text("Login",
                        style:TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                        )),
                        style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 98, 13, 129)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15,horizontal: 120)),
                        ),),
                        SizedBox(
                                     height: 10,
                                   ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                      Text("Don't have an account?",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 51, 14, 82),
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap:(){
                          Navigator.pushNamed(context,"/SignUP");
                        },
                        child: Text("sign up",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 58, 56, 56),
                                fontWeight: FontWeight.bold)),
                      ),
                                     ],
                                   ),
                                       
                                       ],),
                     ),
                   ),]
              ),
              ),
              ),
            );
  }
}
