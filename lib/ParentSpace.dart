// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'assets.dart';

class ParentSpace extends StatelessWidget {
  const ParentSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: const Color.fromARGB(255, 245, 245, 245),
            ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 40, 20, 30),
              child: Column(children: <Widget>[
                //SizedBox(height: 50),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Parent Space", style: TitleText),
                ),
                const SizedBox(height: 30),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Current course progress", style: subTitleStyle),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 1),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4.0,
                          spreadRadius: 4.0,
                          offset: const Offset(
                            -2.0,
                            4.0,
                          ),
                        )
                      ],
                      color: darkBlueColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Dealing with numbers",
                          style: boxTitle,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const LinearProgressIndicator(
                        value: 0.6,
                        color: lightBlueColor,
                        backgroundColor: Colors.white,
                        minHeight: 7,
                      ),
                      const SizedBox(height: 25),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "simple operations on numbers",
                          style: descText,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Choose your child's learning topics",
                      style: subTitleStyle),
                ),
                const SizedBox(height: 40),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Current topics",
                      style: TextStyle(
                          fontFamily: 'rounded',
                          fontSize: 20,
                          color: myDarkgreyColor,
                          fontWeight: FontWeight.w700)),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4.0,
                        spreadRadius: 4.0,
                        offset: const Offset(
                          -2.0,
                          4.0,
                        ),
                      )
                    ],
                    color: greenColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      availableTopic(
                        topicName: avTopics[0],
                        textColor: Colors.white,
                        ico: remove,
                      ),
                      availableTopic(
                        topicName: avTopics[1],
                        textColor: Colors.white,
                        ico: remove,
                      ),
                      availableTopic(
                        topicName: avTopics[2],
                        textColor: Colors.white,
                        ico: remove,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Add more",
                      style: TextStyle(
                          fontFamily: 'rounded',
                          fontSize: 20,
                          color: myDarkgreyColor,
                          fontWeight: FontWeight.w700)),
                ),
                const SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4.0,
                        spreadRadius: 4.0,
                        offset: const Offset(
                          -2.0,
                          4.0,
                        ),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      availableTopic(
                        topicName: unavTopics[0],
                        textColor: Colors.black,
                        ico: add,
                      ),
                      availableTopic(
                        topicName: unavTopics[1],
                        textColor: Colors.black,
                        ico: add,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class availableTopic extends StatelessWidget {
  final String topicName;
  final textColor;
  final ico;
  const availableTopic(
      {Key? key,
      required this.topicName,
      required this.textColor,
      required this.ico})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(topicName,
                style: TextStyle(
                    fontFamily: 'rounded',
                    fontSize: 20,
                    color: textColor,
                    fontWeight: FontWeight.w600)),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                ico,
                color: textColor,
              )),
        ],
      ),
    );
  }
}
