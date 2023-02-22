import 'package:flutter/material.dart';

class OTPTextField extends StatefulWidget {
  const OTPTextField({super.key});

  @override
  State<OTPTextField> createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        controller: controller,
        maxLength: 1,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)),
          hintText: '',
          filled: true,
          fillColor: Colors.grey.shade200,
        ),
      ),
    );
  }
}
