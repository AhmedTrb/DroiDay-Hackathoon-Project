// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

List<String> avTopics = [
  "Dealing with numbers",
  "Islamic Golden Age",
  "English"
];
List<String> unavTopics = ["Astronomy", "other thing"];

const subTitleStyle = TextStyle(
    fontFamily: 'rounded',
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.w300);
const boxTitle = TextStyle(
    fontFamily: 'rounded',
    fontSize: 26,
    color: Colors.white,
    fontWeight: FontWeight.w700);

const descText = TextStyle(
    fontFamily: 'rounded',
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.w400);

const TitleText = TextStyle(
    fontFamily: 'rounded',
    fontSize: 30,
    color: lightBlueColor,
    fontWeight: FontWeight.w700);

const topicTitleText = TextStyle(
    fontFamily: 'rounded',
    fontSize: 30,
    color: darkBlueColor,
    fontWeight: FontWeight.w700);
const topicText = TextStyle(
    fontFamily: 'rounded',
    fontSize: 30,
    color: darkBlueColor,
    fontWeight: FontWeight.w700);

const RedColor = Color(0xFFE94F37);
const darkBlueColor = Color(0xFF134074);
const lightBlueColor = Color(0xFF009FFD);
const yellowColor1 = Color(0xFFFFD100);
const yellowColor2 = Color(0xFFF7B538);
const greenColor = Color(0xFF17C3B2);
const myDarkgreyColor = Color(0xFF505050);
const mywhiteColor = Color(0xFFF2F2F2);
const bgcolor = Color(0xFFFDFAFA);
const orangeColor = Color(0xFFF08214);

const double heightLogoPlace = 50;

const add = Icons.add;
const remove = Icons.remove;

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  State<Check> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Check> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      return yellowColor1;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class check2 extends StatefulWidget {
  const check2({Key? key}) : super(key: key);

  @override
  State<check2> createState() => _MyStatefulWidgetState1();
}

class _MyStatefulWidgetState1 extends State<check2> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      return Colors.grey;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class MyBulletList extends StatelessWidget {
  final text;
  MyBulletList({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 15),
          height: 5.0,
          width: 5.0,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        Text(text,
            style: const TextStyle(
                fontFamily: 'rounded',
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w400)),
      ],
    ));
  }
}
