import 'package:flutter/material.dart';
import 'package:loginui/utils/square_tile.dart';

import 'package:velocity_x/velocity_x.dart';

import '../utils/button.dart';
import '../utils/my_texfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    void logintap() {}

    final usernameController = TextEditingController();
    final passwordtextcontroller = TextEditingController();
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Material(
        child: Scaffold(
          //to solve the bottom flow issue
          resizeToAvoidBottomInset: false,
          body: Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff0250c5),
                  Color(0xffd43f8d),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                //logo
                Icon(
                  Icons.lock_rounded,
                  size: 100,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                "Welcome".text.xl5.fontFamily("Poppins").makeCentered(),
                SizedBox(
                  height: 20,
                ),
                MyTextfield(
                  prefix: Icon(
                    Icons.person,
                    color: Colors.grey[900],
                  ),
                  hinttext: "Enter Your User_Name",
                  lableText: "User Name",
                  obscureText: false,
                  controller: usernameController,
                ),
                MyTextfield(
                  prefix: Icon(Icons.password_rounded, color: Colors.grey[900]),
                  hinttext: "Enter Your Password",
                  lableText: "Password",
                  obscureText: true,
                  controller: passwordtextcontroller,
                ),
                SizedBox(
                  height: 15,
                ),
                MyButton(
                  ontap: logintap,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 5.0,
                        color: Colors.deepPurple[400],
                      )),
                      "Or Continue With".text.indigo300.xl2.make().p(12),
                      Expanded(
                        child: Divider(
                          thickness: 5.0,
                          color: Colors.deepPurple[400],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagpath: "assets/images/apple.png"),
                    SizedBox(
                      width: 18,
                    ),
                    SquareTile(imagpath: "assets/images/google.png")
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
