import 'package:flutter/material.dart';


import 'pages/login_page.dart';

void main() {
  runApp(LoginUi());
}

class LoginUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Ui",
      home: LoginPage(),
    );
  }
}
