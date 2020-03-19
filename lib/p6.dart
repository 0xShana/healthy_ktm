import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF02A0C7),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: <Widget>[
                Text('ALL CASES',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0)),
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [
                          _buildPat('Names', '245765', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ), _buildPat('Names', '245765', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ), _buildPat('Names', '245765', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ), _buildPat('Names', '245765', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ), _buildPat('Names', '245765', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ), _buildPat('Names', '245765', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ), _buildPat('Names', '245765', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ), _buildPat('Names', '245765', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ), _buildPat('Names', '245765', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ), _buildPat('Names', '245765', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ),
                          _buildPat('Names', '24677', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ),
                          _buildPat('Names', '247657', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ),
                          _buildPat('Names', '247678', '45', 'f'),
                          SizedBox(
                            height: 10,
                          ),
                          _buildPat('Names', '247687', '45', 'f'),
                          SizedBox(height: 10,),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color(0xFF02A0C7),
                                      Color(0xFF13007D)
                                    ])),
                            child: Center(
                              child: Text(
                                "update case",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPat(String namePat, String id_no, String age, String gender) {
    return Padding(
        padding: EdgeInsets.all(1.0),
        child: InkWell(
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.2),
                  blurRadius: 40.0, // soften the shadow


                )
              ],
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Column(children: [
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("CASE ID : ",
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: Colors.cyan,
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold)),
                                        Text(id_no,
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold)),
                                      ])
                                ])),




                            Text(namePat,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold)),
                          ])
                    ])),
                Container(
                    child: Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Age",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.cyan,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold)),
                            Text(age,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold)),
                          ])
                    ])),
                Container(
                    child: Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Gender",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 17.0,
                                    color: Colors.cyan,
                                    fontWeight: FontWeight.bold)),
                            Text(gender,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 17.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                          ])
                    ])),
                SizedBox(height: 2,),
              ],
            ),
          ),
        ));
  }
}
