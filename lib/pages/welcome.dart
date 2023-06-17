import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}
class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 243, 243),
             body: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset("assets/images/main_top.png",width: 100,)),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Image.asset("assets/images/main_bottom.png",width: 60,)),
               SingleChildScrollView(
                 child: SizedBox(
                  width: double.infinity,
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                      Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: Text("Welcome",style: TextStyle(
                          fontFamily:'F1' ,
                          fontSize: 30,
                          fontWeight:FontWeight.bold,
                          color: Colors.grey[800],
                        ),),
                      ),
                      SizedBox(height: 90,),
                      SvgPicture.asset("assets/icons/chat.svg",width: 260,),
                      SizedBox(height: 50),
                       Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: ElevatedButton(onPressed: (){
                          Navigator.pushNamed(context, "/login");},
                                child: Text("Login",
                                style:TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                                style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 98, 13, 129)),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),)),
                                padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15,horizontal: 100)),
                                ),),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: ElevatedButton(onPressed: (){
                          Navigator.pushNamed(context, '/SignUP');},
                             child: Text("Sign up",
                            style:TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                            style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 227, 194, 240)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),)),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15,horizontal: 92)),
                            ),),
                       )
                     ],
                   ),
                 ),
               ),]
             ),   
      ),
    );
  }
}
