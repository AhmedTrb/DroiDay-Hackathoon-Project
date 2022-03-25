// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:we_learn/HomePage.dart';
import 'package:we_learn/assets.dart';

class ResultPage extends StatelessWidget {
  final int sc;
  const ResultPage({Key? key, required this.sc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 150, top: 40),
        //margin: EdgeInsets.only(left: 40, right: 40),
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bgtopic.png'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200),
              Text("Your score is $sc \n", style: TitleText),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  color: darkBlueColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: const Center(
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: "rounded"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
