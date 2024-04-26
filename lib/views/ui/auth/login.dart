import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hackathon/constants/app_constants.dart';
import 'package:hackathon/views/comman/drawer/app_bar.dart';
import 'package:hackathon/views/comman/drawer/app_style.dart';
import 'package:hackathon/views/comman/drawer/custom_text.dart';
import 'package:hackathon/views/comman/drawer/height_spacer.dart';
import 'package:hackathon/views/comman/drawer/reusable_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
            text: "Login",
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(CupertinoIcons.arrow_left),
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            HeightSpacer(size: 50),
            ReusableText(text: "Welcome Back!",
            style: appstyle(30, Color(kDark.value), FontWeight.w600)),
          
           ReusableText(text: "Fill the details to login to your account",
            style: appstyle(16, Color(kDarkGrey.value), FontWeight.w600))
          
          
          ],
        ),
      
      )
    );
  }
}
