import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:momondo/config.dart';
import 'package:momondo/screens/home_screen.dart';
import 'package:momondo/screens/splash_screen.dart';
import 'package:momondo/screens/utils_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        backgroundColor: AppConfig.backgroudColor, // Color(0xff3d2461),
        scaffoldBackgroundColor: AppConfig.backgroudColor,
      ),
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/utils',
          page: () => UtilsScreen(),
        ),
      ],
      home: SplashScreen(),
    );
  }
}
