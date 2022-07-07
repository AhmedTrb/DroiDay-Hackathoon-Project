// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'Header.dart';
import 'ParentSpace.dart';
import 'assets.dart';

class LoginPageParent extends StatelessWidget {
  const LoginPageParent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: lightBlueColor,
          ),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const SizedBox(height: heightLogoPlace),
                const Header(),
                Expanded(
                    child: Container(
                  decoration: const BoxDecoration(
                      color: bgcolor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: SingleChildScrollView(
                      reverse: true,
                      child: Column(
                        children: <Widget>[
                          const Text("Log in", style: TitleText),
                          const SizedBox(height: 50),
                          Column(
                            children: <Widget>[
                              const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("Email address",
                                      style: subTitleStyle)),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 151, 151, 151),
                                    )),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    //prefixIcon: Icon(Icons.mail),
                                    hintText: "Name@gmail.com",
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 159, 159, 159),
                                        fontSize: 11),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 40),
                              const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("Enter Password",
                                      style: subTitleStyle)),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 221, 221, 221),
                                  ),
                                ),
                                child: const TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      //prefixIcon: Icon(Icons.password),
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 159, 159, 159),
                                          fontSize: 11),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 80),
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ParentSpace()));
                            },
                            color: const Color.fromARGB(255, 255, 208, 0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: const Center(
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
          )),
    );
  }
}
