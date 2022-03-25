// ignore_for_file: file_names, unnecessary_const

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 60),
          child: const Image(image: AssetImage('assets/Logo-1.png')),
        )
      ],
    );
  }
}
