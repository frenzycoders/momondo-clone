import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momondo/config.dart';
import 'package:momondo/widgets/app_name.dart';

class UtilsScreen extends StatelessWidget {
  const UtilsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConfig.backgroudColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AppName(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By using our app, you agree to\nour ',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: GoogleFonts.roboto(
                        color: Color(0xff4d9dc9),
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // decoration: TextDecoration.underline
                      ),
                    ),
                    TextSpan(
                      text: ' and our \n',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy & Cookie',
                      style: GoogleFonts.roboto(
                        color: Color(0xff4d9dc9),
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: " Policy",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppConfig.buttonColor),
                      maximumSize:
                          MaterialStateProperty.all(Size(double.infinity, 50)),
                      minimumSize: MaterialStateProperty.all(
                        Size(double.infinity, 50),
                      ),
                    ),
                    onPressed: () {
                      Get.offAllNamed('/home');
                    },
                    child: Text(
                      'Confirm',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
