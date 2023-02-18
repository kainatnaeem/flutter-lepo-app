import 'package:flutter/material.dart';
import 'package:lepo_app/screens/constants/colors.dart';

import '../widgets/appbar.dart';
import '../widgets/buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: CustomAppBar(height, width, "Verification Code"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: height * 0.2,
                decoration: BoxDecoration(
                    color: MyColors.myPurpleColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Text(
                  "Login",
                  style:
                      TextStyle(fontSize: 30, color: MyColors.myWhiteColor),
                      ),
                      SizedBox(
                  height: height * 0.005,
                      ),
                      Text("Hi, Welcome Back!",
                    style:
                        TextStyle(fontSize: 15, color: MyColors.myWhiteColor))
                    ]),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20, top: 8, bottom: 8, right: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email),
                        hintText: "Johndoe@gmail.com",
                        labelText: "Email",
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock),
                        hintText: "******",
                        labelText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?",
                        style: TextStyle(color: MyColors.myPurpleColor))),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              buildAuthButton(height, width, "Login"),
        
              SizedBox(
                height: height * 0.018,
              ),
              Text("You don't have an account?",
                  style: TextStyle(fontSize: 16, color: MyColors.myPurpleColor)),
        
              SizedBox(height: height * 0.04),
        //
              buildCustomButton(height, width, MyColors.myWhiteColor, MyColors.myBlackColor,
                  "continue with Google", "Google.png"),
              SizedBox(
                height: height * 0.008,
              ),
              buildCustomButton(height, width, MyColors.myBlueColor, MyColors.myWhiteColor,
                  "continue with Facebook", "Facebook.png"),
              SizedBox(
                height: height * 0.008,
              ),
              buildCustomButton(height, width, MyColors.myBlackColor, MyColors.myWhiteColor,
                  "continue with Apple", "Apple.png"),
            ],
          ),
        ));
  }
}
