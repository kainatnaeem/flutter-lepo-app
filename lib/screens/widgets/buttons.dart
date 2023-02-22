import 'package:flutter/material.dart';

import '../constants/colors.dart';

Container buildAuthButton(double height, double width, String buttonText) {
  return Container(
      decoration: BoxDecoration(
        color: MyColors.myPurpleColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      height: height * 0.06,
      width: width * .85,
      child: Align(
          alignment: Alignment.center,
          child: Text(buttonText,
              style: TextStyle(fontSize: 10, color: MyColors.myWhiteColor))));
}

Container buildCustomButton(double height, double width, Color btnColor,
    Color textColor, String text, String image) {
  return Container(
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 0.0),
            )
          ],
          color: btnColor,
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      height: height * 0.05,
      width: width * .7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              "assets/images/${image}",
            ),
            width: width * 0.06,
            height: height * 0.06,
          ),
          SizedBox(
            width: width * 0.05,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 10, color: textColor),
          ),
        ],
      ));
}
