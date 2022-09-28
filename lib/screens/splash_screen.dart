import 'package:flutter/material.dart';
import 'package:momondo/config.dart';
import 'package:momondo/widgets/app_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    changeScreen();
  }

  void changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/utils');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(),
          Container(
            alignment: Alignment.center,
            child: AppName(),
          ),
        ],
      ),
    );
  }
}
