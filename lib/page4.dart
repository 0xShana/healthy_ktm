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
											FadeAnimation(1.5, Text("HEALTHY KOTTAYAM !", style: TextStyle(color: Colors.black,fontSize:40, fontWeight: FontWeight.bold),)),
											SizedBox(height: 30,),
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
															height: 50,
															decoration: BoxDecoration(
																	borderRadius: BorderRadius.circular(10),
																color: const Color(0xFFF44336),
															),
															child: Center(
																child: Text("ADD NEW CASE ", style: TextStyle(color: Colors.white,fontSize:26, fontWeight: FontWeight.bold),),
															),
														)),
														SizedBox(height: 40,),
														FadeAnimation(2, Container(
															height: 50,
															decoration: BoxDecoration(
																	borderRadius: BorderRadius.circular(10),
																	color: const Color(0xff7c94b6),

															),
															child: Center(
																child: Text("VIEW CASES", style: TextStyle(color: Colors.white,fontSize:26,fontWeight: FontWeight.bold),),
															),
														)),
													],
												),
											)),
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
