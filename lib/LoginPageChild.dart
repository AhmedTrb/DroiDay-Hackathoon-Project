// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'Header.dart';
import 'HomePage.dart';
import 'assets.dart';

class LoginPageChild extends StatelessWidget {
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
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 30, 40, 30),
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    children: <Widget>[
                      Text("Log in", style: TitleText),
                      SizedBox(height: 50),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("Email address",
                                    style: subTitleStyle)),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 151, 151, 151),
                                  )),
                              child: TextField(
                                decoration: InputDecoration(
                                  //prefixIcon: Icon(Icons.mail),
                                  hintText: "Name@gmail.com",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 159, 159, 159),
                                      fontSize: 11),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("Enter Password",
                                    style: subTitleStyle)),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Color.fromARGB(255, 221, 221, 221),
                                ),
                              ),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    //prefixIcon: Icon(Icons.password),
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 159, 159, 159),
                                        fontSize: 11),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 80),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        },
                        color: yellowColor1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.only(
                            top: 10, left: 20, right: 20, bottom: 10),
                        child: Center(
                          child: Text(
                            "Log in",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: "rounded"),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
