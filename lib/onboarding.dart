import 'dart:io';

import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key key}) : super(key: key);

  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final int _totalPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF02A0C7),Color(0xFF13007D)])
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Container(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              _currentPage = page;
              setState(() {});
            },
            children: <Widget>[
              _buildPageContent(
                  image: 'assets/images/img1.jpg',
                  title: 'Surveillance',
                  body:
                  'Identifying cases and their contacts to track exposures and monitor community spread so that public health authorities can take rapid and targeted action.'),
              _buildPageContent(
                  image: 'assets/images/img2.jpg',
                  title: 'Communication and outreach',
                  body:
                  'Providing timely, trusted, accessible and evidence-informed information that people require to protect themselves, their families, their communities and businesses.'),
              _buildPageContent(
                  image: 'assets/images/img3.jpg',
                  title: 'Border and travel health',
                  body:
                  'Identifying travellers who may be ill, and raising awareness among all travellers entering Canada to self-isolate, monitor for symptoms and take appropriate action if they experience symptoms.'),
              _buildPageContent(
                  image: 'assets/images/img4.png',
                  title: ' ',
                  body:
                  'Since the novel coronavirus emerged, the Health Centres of Kerala and provincial and territorial public health authorities have been working together to ensure a coordinated approach to slow the spread of the virus and to reduce its impacts on our population—especially the most vulnerable—and on our health system.')
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage != 3
          ? Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                _pageController.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.linear);
                setState(() {});
              },
              splashColor: Colors.blue[50],
              child: Text(
                'SKIP',
                style: TextStyle(color: Color(0xFF0074E4), fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              child: Row(children: [
                for (int i = 0; i < _totalPages; i++) i == _currentPage ? _buildPageIndicator(true) : _buildPageIndicator(false)
              ]),
            ),
            FlatButton(
              onPressed: () {
                _pageController.animateToPage(_currentPage + 1, duration: Duration(milliseconds: 400), curve: Curves.linear);
                setState(() {});
              },
              splashColor: Colors.blue[50],
              child: Text(
                'NEXT',
                style: TextStyle(color: Color(0xFF0074E4), fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      )
          : InkWell(
        onTap: () => print('Get Started Now'),

        child: Container(
          height: 60,
          decoration: BoxDecoration(

              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF02A0C7),Color(0xFF13007D)])
          ),
          child: Center(
            child: Text("GO TO HEALTHY KOTTAYAM", style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }

  Widget _buildPageContent({
    String image,
    String title,
    String body,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(image),
          ),
          SizedBox(height: 40),
          Text(
            title,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Text(
            body,
            style: TextStyle(fontSize: 20, height: 2.0),
          ),
        ],
      ),
    );
  }
}
