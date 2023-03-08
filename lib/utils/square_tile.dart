import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SquareTile extends StatelessWidget {
  final String imagpath;
  const SquareTile({super.key, required this.imagpath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.indigo),
          color: Colors.grey[300]),
      child: Image.asset(
        imagpath,
        height: 40,
      ),
    ).p(12);
  }
}
