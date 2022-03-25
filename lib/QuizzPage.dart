// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:we_learn/assets.dart';
import 'subtopicPage.dart';
import 'ResultPage.dart';
import 'Text.dart';

class questionWidget extends StatelessWidget {
  final String question;
  final int indexAction;

  const questionWidget(
      {Key? key, required this.indexAction, required this.question})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Q${indexAction + 1}: $question",
        style: TextStyle(
            fontFamily: 'rounded',
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final String option;
  const OptionCard({Key? key, required this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        check2(),
        Text(option,
            style: TextStyle(
                fontFamily: 'rounded',
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w400))
      ],
    ));
  }
}

class QuizzPage extends StatefulWidget {
  final int topicid;
  const QuizzPage({Key? key, required this.topicid}) : super(key: key);

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    int score = 20;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 150),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bgtopic.png'), fit: BoxFit.cover)),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
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
                                    /*Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => subtopicPage(
                                                  T: T,index: ,
                                                )));*/
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
                        ]),
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Text(
                      "Quizz",
                      style: topicTitleText,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    child: Column(
                      children: [
                        for (int j = 0; j < myQuestions.length; j++)
                          Container(
                              child: Column(
                            children: [
                              questionWidget(
                                  indexAction: j,
                                  question:
                                      myQuestions[widget.topicid][j].Title),
                              SizedBox(height: 10),
                              for (int i = 0;
                                  i <
                                      myQuestions[widget.topicid][index]
                                          .options
                                          .length;
                                  i++)
                                OptionCard(
                                    option: myQuestions[widget.topicid][index]
                                        .options
                                        .keys
                                        .toList()[i])
                            ],
                          )),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ResultPage(sc: score)));
                    },
                    color: darkBlueColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: const Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: "rounded"),
                      ),
                    ),
                  ),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
