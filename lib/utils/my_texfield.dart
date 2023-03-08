import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTextfield extends StatelessWidget {
  final String hinttext;
  final controller;
  final iconcolor = Colors.black;
  final Widget prefix;
  final String lableText;
  final bool obscureText;
  const MyTextfield(
      {super.key,
      required this.hinttext,
      required this.lableText,
      required this.obscureText,
      this.controller,
      required this.prefix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefix,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 02),
            borderRadius: BorderRadius.circular(26)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 02),
            borderRadius: BorderRadius.circular(26)),
        hintText: hinttext,
        hintStyle: TextStyle(fontSize: 20, color: Colors.white),
        labelText: lableText,
        labelStyle: TextStyle(fontSize: 22, color: Colors.black),
      ),
    ).p(16);
  }
}
