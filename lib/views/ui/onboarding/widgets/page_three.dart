import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hackathon/constants/app_constants.dart';
import 'package:hackathon/views/comman/drawer/app_style.dart';
import 'package:hackathon/views/comman/drawer/custom_outline.dart';
import 'package:hackathon/views/comman/drawer/height_spacer.dart';
import 'package:hackathon/views/comman/drawer/reusable_text.dart';
import 'package:hackathon/views/ui/auth/login.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: width,
          height: height,
          color: Color(kLightBlue.value),
          child: Column(
            children: [
              Image.asset("assets/images/page3.png"),
              HeightSpacer(size: 20),
              ReusableText(
                  text: "welcome To NextHire",
                  style: appstyle(30, Color(kLight.value), FontWeight.w600)),
              const HeightSpacer(size: 15),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                      "We will help you to find your dream job to your skillset, location and preference to build your career",
                      textAlign: TextAlign.center,
                      style: appstyle(
                          14, Color(kLight.value), FontWeight.normal))),
              HeightSpacer(size: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomOutLineBtn(
                    // onTap: () async {
                    //   final SharedPreferences prefs =
                    //       await SharedPreferences.getInstance();
                    //   await prefs.setBool('entrypoint', true);
                    //   Get.to(() => const LoginPage());
                    // },
                    text: "Login",
                    width: width * 0.4,
                    height: height * 0.06,
                    color: Color(kLight.value),
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   Get.to(() => const RegistrationPage());
                    // },
                    child: Container(
                      width: width * 0.4,
                      height: height * 0.06,
                      color: Color(kLight.value),
                      child: Center(
                        child: ReusableText(
                            text: "Sign Up",
                            style: appstyle(
                                16, Color(kLightBlue.value), FontWeight.w600)),
                      ),
                    ),
                  )
                ],
              ),
              HeightSpacer(size: 30),
              ReusableText(
                  text: "continue as guest",
                  style: appstyle(16, Color(kLight.value), FontWeight.w400))
            ],
          )),
    );
  }
}
