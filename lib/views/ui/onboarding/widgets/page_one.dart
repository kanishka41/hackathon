import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon/constants/app_constants.dart';
import 'package:hackathon/views/comman/drawer/app_style.dart';
import 'package:hackathon/views/comman/drawer/height_spacer.dart';
import 'package:hackathon/views/comman/drawer/reusable_text.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Color(kDarkPurple.value),
        child: Column(
          children: [
           HeightSpacer(size:70 ,),

          Image.asset("assets/images/page1.png"),
           
           const HeightSpacer(size: 40),

           Column(
            children:[
              ReusableText(text:"Find your Dream Job ", style: appstyle(30, Color(kLight.value), FontWeight.w500)),
              const HeightSpacer(size:10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:30.0.w),
              child: Text(
                "We help you find your dream job according to your skills", 
                textAlign: TextAlign.center,
                style: appstyle(14,Color(kLight.value),FontWeight.normal),
              )
              )

            ]
           )
        ],)
      ),
    );
  }
}

