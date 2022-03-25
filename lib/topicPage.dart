// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_learn/assets.dart';
import 'subtopicPage.dart';
import 'HomePage.dart';
import 'QuizzPage.dart';
import 'assets.dart';
import 'Text.dart';

class TopicPage extends StatelessWidget {
  final topic T;
  final int topicId;
  const TopicPage({Key? key, required this.T, required this.topicId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int a = 0;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bgtopic.png'), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //SvgPicture.asset('target.svg'),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios_new_rounded),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomePage()));
                              },
                            ),
                            Text(
                              "Back",
                              style: TextStyle(
                                  fontFamily: 'rounded',
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(
                                  fontFamily: 'rounded',
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios_rounded),
                              onPressed: () {
                                //print(ind);
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => subtopicPage(
                                          T: T,
                                          ind: a,
                                          tId: topicId,
                                        )));
                              },
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
              SizedBox(height: 60),
              Center(
                child: Text(
                  T.title,
                  style: topicTitleText,
                ),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Things you'll learn", style: subTitleStyle),
              ),

              Container(
                  padding: EdgeInsets.only(top: 30, bottom: 30),
                  child: Column(
                    children: [
                      for (int i = 0; i < T.Goals.length; i++)
                        MyBulletList(text: T.Goals[i]),
                    ],
                  )),
              /*Text("Fist thing to learn", style: descText),
              Text("- second thing to learn", style: descText),
              Text("- third thing to learn", style: descText),*/
              Align(
                alignment: Alignment.topLeft,
                child: Text("Extra resources", style: subTitleStyle),
              ),
              //Text("books / articles / and other ..", style: descText),
            ],
          ),
        ),
      ),
    );
  }
}

/*class TopicPage1 extends StatelessWidget {
  const TopicPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bgtopic.png'), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //SvgPicture.asset('target.svg'),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios_new_rounded),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomePage()));
                              },
                            ),
                            Text(
                              "Back",
                              style: TextStyle(
                                  fontFamily: 'rounded',
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(
                                  fontFamily: 'rounded',
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios_rounded),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => subtopicPage1()));
                              },
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
              SizedBox(height: 60),
              Center(
                child: Text(
                  "Dealing with numbers",
                  style: topicTitleText,
                ),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Things you'll learn", style: subTitleStyle),
              ),

              Container(
                  padding: EdgeInsets.only(top: 30, bottom: 30),
                  child: Column(
                    children: [
                      MyBulletList(
                          text:
                              "Operations on numbers : add / substract / multiply / divide"),
                    ],
                  )),
              /*Text("Fist thing to learn", style: descText),
              Text("- second thing to learn", style: descText),
              Text("- third thing to learn", style: descText),*/
              Align(
                alignment: Alignment.topLeft,
                child: Text("Extra resources", style: subTitleStyle),
              ),
              //Text("books / articles / and other ..", style: descText),
            ],
          ),
        ),
      ),
    );
  }
}
*/