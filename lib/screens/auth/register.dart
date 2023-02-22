import 'package:flutter/material.dart';
import 'package:lepo_app/screens/constants/colors.dart';
import 'package:lepo_app/screens/widgets/appbar.dart';
import 'package:lepo_app/screens/widgets/buttons.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: CustomAppBar(height, width, "", ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
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
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 30, color: MyColors.myWhiteColor),
                          ),
                        ]))),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: MyColors.myGreyColor),
                        ),
                        hintText: "Johndoe",
                        hintStyle: const TextStyle(
                          height: 4,
                        ),
                        labelText: "Username",
                        labelStyle: const TextStyle(height: 3)),
                  ),
                  // SizedBox(
                  //   height: height * 0.03,
                  // ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: MyColors.myGreyColor),
                        ),
                        hintText: "Johndoe@gmail.com",
                        hintStyle: const TextStyle(
                          height: 4,
                        ),
                        labelText: "Email",
                        labelStyle: const TextStyle(height: 3)),
                  ),
                  // SizedBox(
                  //   height: height * 0.03,
                  // ),
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: MyColors.myGreyColor),
                        ),
                        hintText: "+91 1234 5678",
                        hintStyle: const TextStyle(
                          height: 4,
                        ),
                        labelText: "Phone",
                        labelStyle: const TextStyle(height: 3)),
                  ),
                  // SizedBox(
                  //   height: height * 0.03,
                  // ),
                  TextFormField(
                    controller: _genderController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: MyColors.myGreyColor),
                        ),
                        hintText: "Male",
                        hintStyle: const TextStyle(
                          height: 4,
                        ),
                        labelText: "Gender",
                        labelStyle: const TextStyle(height: 3)),
                  ),
                  // SizedBox(
                  //   height: height * 0.03,
                  // ),
                  TextFormField(
                    controller: _dobController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: MyColors.myGreyColor),
                        ),
                        hintText: "10/3/1977",
                        hintStyle: const TextStyle(
                          height: 4,
                        ),
                        labelText: "Date of Birth",
                        labelStyle: const TextStyle(height: 3)),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  buildAuthButton(height, width, "Register"),
                ]),
              ),
            )
          ]),
        ));
  }
}
