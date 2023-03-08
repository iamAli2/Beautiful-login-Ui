import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyButton extends StatelessWidget {
  final Function()? ontap;
  const MyButton({super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.deepPurple,
      onTap: ontap,
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 65),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.indigo),
        child: Center(
          child: "Login".text.fontFamily("loginfont").xl3.make(),
        ),
      ).p(25),
    );
  }
}
