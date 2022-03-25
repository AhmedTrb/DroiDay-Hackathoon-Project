// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_learn/subtopicPage.dart';
import 'package:we_learn/topicPage.dart';
import 'assets.dart';
import 'Text.dart';
import 'topicPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            decoration: const BoxDecoration(color: Color(0xFFF2F2F2)),
            child: Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //SizedBox(height: 10),
                Container(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Home", style: TitleText),
                        Text(
                          "Welcome back user !",
                          style: TextStyle(
                              fontFamily: 'rounded',
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    )),
                /* Container(
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4.0,
                        spreadRadius: 2.0,
                        offset: Offset(
                          -2.0,
                          4.0,
                        ),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "knowledge Points : 40",
                    style: TextStyle(
                        fontFamily: 'rounded',
                        fontSize: 20,
                        color: myDarkgreyColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),*/
                const SizedBox(height: 30),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Daily goals",
                    style: subTitleStyle,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4.0,
                        spreadRadius: 4.0,
                        offset: Offset(
                          -2.0,
                          4.0,
                        ),
                      )
                    ],
                    color: RedColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text("Read 10 pages",
                                  style: TextStyle(
                                      fontFamily: 'rounded',
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Check(),
                          ],
                        ),
                      ),
                      //SizedBox(height: 10),
                      /*Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              "read ",
                              style: TextStyle(
                                  fontFamily: 'rounded',
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                        ),*/
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Challenges",
                    style: subTitleStyle,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                  decoration: BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 10.0,
                        spreadRadius: 5.0,
                        offset: Offset(
                          -5.0,
                          5.0,
                        ),
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Complete 4 topics",
                                  style: boxTitle,
                                ),
                              ),
                              Image(image: AssetImage('assets/target.png')),
                            ]),
                      ),
                      SizedBox(height: 10),
                      const LinearProgressIndicator(
                        value: 0.8,
                        color: Colors.yellow,
                        backgroundColor: orangeColor,
                        minHeight: 8,
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Knowlege master",
                          style: boxTitle,
                        ),
                      ),
                      SizedBox(height: 10),
                      const LinearProgressIndicator(
                        value: 0.4,
                        color: Colors.white,
                        backgroundColor: orangeColor,
                        minHeight: 8,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Courses",
                    style: subTitleStyle,
                  ),
                ),
                const SizedBox(height: 20),
                for (int i = 0; i < myTopics.length; i++)
                  topicCard(
                    T: myTopics[i],
                    indexAction: i,
                  ),
                const SizedBox(height: 20),
              ],
            )),
          ),
        ],
      ),
    );
  }
}

class topicCard extends StatelessWidget {
  final topic T;
  final int indexAction;

  const topicCard({
    Key? key,
    required this.T,
    required this.indexAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: RaisedButton(
        splashColor: yellowColor2,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TopicPage(
                    T: myTopics[indexAction],
                    topicId: indexAction,
                  )));
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(T.title,
                          style: TextStyle(
                              fontFamily: 'rounded',
                              fontSize: 20,
                              color: myDarkgreyColor,
                              fontWeight: FontWeight.w700)),
                    ),
                    Image(image: T.icon),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(T.topicDes,
                    style: TextStyle(
                        fontFamily: 'rounded',
                        fontSize: 12,
                        color: myDarkgreyColor,
                        fontWeight: FontWeight.w400)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
