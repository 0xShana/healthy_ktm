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
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
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
                            FadeAnimation(2, Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [Color(0xFF02A0C7),Color(0xFF13007D)])
                              ),
                              child: Center(
                                child: Text("ADD NEW CASE  ", style: TextStyle(color: Colors.white,fontSize: 40, fontWeight: FontWeight.bold),),
                              ),
                            )),
                            //FadeAnimation(1.5, Text("ADD NEW CASE", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Colors.cyan),)),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "ID No.",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Name:",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Age",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Gender",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Address",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Phone No",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Primary or Secondary Contact of +ve Patient",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Relation to Identidied + ve Patient / Reason for Contact",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "BLOCK Name",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Name of Panchayat / Municipality",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Name of PHC/CMC/FHC Area Assigned",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Whether arrived from a foreign country /Other State if yes Country name/state name: ",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Date of Arrival",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Date of departure from affected country / State",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Date of receipt of information",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Today's Health status(Symptomatic /Asymptomatic",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Risk Categorisation High/Low",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Starting Date of Quarantine",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Ending date of Quarantine as per new Discharge Matrix / Risk",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "No. of children under 13 years at their home with contact history to person under isolation",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Sample Collected or not",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Date of sample Collection",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Result-Pos/Neg/Pending",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Shifted to Hospital / Quarantine Facility ",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[400]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Discharged/ Released( after completing 28/14  days)",
                                    hintStyle: TextStyle(color: Colors.grey[800])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Remarks If Any",
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
                          child: Text("ADD ", style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
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
