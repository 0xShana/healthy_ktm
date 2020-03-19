import 'package:day12_login/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/img1.jpg'),
                          fit: BoxFit.fitWidth
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.5, Text("WELCOME TO HEALTHY KOTTAYAM ", style: TextStyle(color: Colors.black, fontSize: 43, fontWeight: FontWeight.bold),)),
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            /*Container(
														padding: EdgeInsets.all(8.0),
														child: TextField(
															decoration: InputDecoration(    // welcome text
																	border: InputBorder.none,
																	hintText: "Password",
																	hintStyle: TextStyle(color: Colors.grey[400])
															),
														),
													),*/


                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter phone number ",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),

                          ],
                        ),
                      )),
                      SizedBox(height: 30,),
                      FadeAnimation(2, Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Color(0xFF02A0C7),Color(0xFF13007D)])
                        ),
                        child: Center(
                          child: Text("send  OTP", style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                        ),
                      )),
                      SizedBox(height: 70,),

                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}












