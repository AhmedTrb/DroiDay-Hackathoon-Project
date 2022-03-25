// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';

import 'Header.dart';
import 'LoginPageParent.dart';
import 'LoginPageChild.dart';
import 'assets.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: lightBlueColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(height: heightLogoPlace),
            Header(),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: bgcolor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    padding: EdgeInsets.all(40),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                                child: Text(
                              "Welcome to WeLearn",
                              style: TextStyle(
                                  fontFamily: 'rounded',
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            )),
                            SizedBox(height: 150),
                            Center(
                              child: Text("Log in as a parent or a learner",
                                  style: TextStyle(
                                      fontFamily: 'rounded',
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(height: 40),
                            Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    RaisedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginPageParent()));
                                      },
                                      color: Color.fromARGB(255, 255, 208, 0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding: EdgeInsets.only(
                                          top: 10,
                                          left: 20,
                                          right: 20,
                                          bottom: 10),
                                      child: Center(
                                        child: Text(
                                          "Parent",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Rounded Mplus 1c"),
                                        ),
                                      ),
                                    ),
                                    RaisedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginPageChild()));
                                      },
                                      color: Color.fromARGB(255, 255, 208, 0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding: EdgeInsets.only(
                                          top: 10,
                                          left: 20,
                                          right: 20,
                                          bottom: 10),
                                      child: Center(
                                        child: Text(
                                          "Learner",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Rounded Mplus 1c"),
                                        ),
                                      ),
                                    ),
                                  ]),
                            )
                          ]),
                    ))),
          ],
        ),
      ),
    );
  }
}
