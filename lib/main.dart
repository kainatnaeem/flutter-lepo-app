import 'package:flutter/material.dart';
import 'package:lepo_app/screens/auth/login.dart';
import 'package:lepo_app/screens/auth/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lepo App',
      theme: ThemeData(
     
      ),
      home: const OtpScreen(),
    );
  }
}
