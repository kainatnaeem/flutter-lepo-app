import 'package:flutter/material.dart';

import '../constants/colors.dart';




  AppBar CustomAppBar(double height, double width, String text) {
    return AppBar(
      centerTitle: true,
      backgroundColor: MyColors.myPurpleColor,
      title: Padding(
        padding:EdgeInsets.only(top:16),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(top:18),
        child: Image(
          width: width * 0.001,
          height: height * 0.001,
          image: const AssetImage("assets/images/Back.png"),
        ),
      ),
      elevation: 0,
    );
  }

