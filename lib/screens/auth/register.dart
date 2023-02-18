import 'package:flutter/material.dart';
import 'package:lepo_app/screens/constants/colors.dart';
import 'package:lepo_app/screens/widgets/otpfield.dart';
import 'package:lepo_app/screens/widgets/buttons.dart';

import '../widgets/appbar.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: CustomAppBar(height, width, "Verification Code"),
        ),
        body: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional(0, 1.25),
              children: [
                Container(
                  width: double.infinity,
                  height: height * 0.4,
                  decoration: BoxDecoration(
                      color: MyColors.myPurpleColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            textAlign: TextAlign.center,
                            "Please enter the verification code sent to +91 728 583 1282",
                            style: TextStyle(
                                fontSize: 20, color: MyColors.myWhiteColor)),

                        Image(
                          image: const AssetImage("assets/images/Tablet.png"),
                          width: width * 0.3,
                          height: height * 0.3,
                        )
                        // Text("Otp", style: TextStyle(fontSize: 30,color:MyColors.myWhiteColor),),
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const OTPTextField(),
                    SizedBox(width: width * 0.1),
                    const OTPTextField(),
                    SizedBox(width: width * 0.1),
                    const OTPTextField(),
                    SizedBox(width: width * 0.1),
                    const OTPTextField(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Text("Didn't recieve an OTP?",
                style: TextStyle(fontSize: 20, color: MyColors.myPurpleColor)),
            SizedBox(
              height: height * 0.008,
            ),
            Text("Resend OTP?",
                style: TextStyle(fontSize: 15, color: MyColors.myPurpleColor, fontWeight:FontWeight.bold)),
            SizedBox(
              height: height * 0.1,
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: buildAuthButton(height, width, "Submit"),
            ),
          ],
        ));
  }
}
