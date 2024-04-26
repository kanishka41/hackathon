import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hackathon/constants/app_constants.dart';
import 'package:hackathon/controllers/onboarding_provider.dart';
import 'package:hackathon/views/ui/onboarding/onboarding_screen.dart';
import 'package:provider/provider.dart';





void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardNotifier()),
        
        
        
         ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'NextHire',
          theme: ThemeData(
            scaffoldBackgroundColor: Color(kLight.value),
            iconTheme: IconThemeData(color: Color(kDark.value)),
            primarySwatch: Colors.grey,
          ),
          home: OnBoardingScreen(),
        );
      },
    );
  }
}

