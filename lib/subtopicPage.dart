// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:we_learn/QuizzPage.dart';
import 'package:we_learn/assets.dart';
import 'topicPage.dart';
import 'assets.dart';
import 'Text.dart';

class subtopicPage extends StatelessWidget {
  final topic T;
  final int tId;
  final int ind;
  subtopicPage(
      {Key? key, required this.T, required this.ind, required this.tId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int id = ind;
    int ti = tId;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(bottom: 120),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bgtopic.png'), fit: BoxFit.cover)),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                          Icons.arrow_back_ios_new_rounded),
                                      onPressed: () {
                                        id--;
                                        if (id < 0) {
                                          print(id);
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => TopicPage(
                                                      T: T,
                                                      topicId: ti,
                                                    )),
                                          );
                                        } else {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    subtopicPage(
                                                      T: T,
                                                      ind: id,
                                                      tId: ti,
                                                    )),
                                          );
                                        }
                                      }),
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
                                      id++;
                                      if (id >= T.subTopics.length) {
                                        print(ind);
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder: (context) => QuizzPage(
                                                      topicid: ti,
                                                    )));
                                      } else {
                                        print(ind);
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    subtopicPage(
                                                      T: T,
                                                      ind: id,
                                                      tId: ti,
                                                    )));
                                      }
                                    },
                                  ),
                                ],
                              ),
                            )
                          ]),
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: Text(
                        T.subTopics[ind][0],
                        style: topicTitleText,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(T.subTopics[ind][1],
                        style: TextStyle(
                            fontFamily: 'rounded',
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w400)),
                    SizedBox(height: 30),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
