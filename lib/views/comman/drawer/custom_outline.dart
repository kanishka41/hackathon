import 'package:flutter/material.dart';
import 'package:hackathon/views/comman/drawer/app_style.dart';
import 'package:hackathon/views/comman/drawer/reusable_text.dart';

class CustomOutLineBtn extends StatelessWidget {
  const CustomOutLineBtn({super.key, this.width, this.height, required this.text, this.onTap, required this.color, this.color2});

  final double? width;
  final double? height;
  final String text;
  final void Function()? onTap;
  final Color color;
  final Color? color2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color2,
          border: Border.all(
            width:1,
            color: color
          )
        ),
        child: Center(
          child: ReusableText(text: text, 
          style: appstyle(16, color, FontWeight.w600),
          ),
        ),
      ));
  }
}
