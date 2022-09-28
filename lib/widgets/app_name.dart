import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'mo',
          style: GoogleFonts.berkshireSwash(
              color: Color(0xff53b3d0).withOpacity(0.7), fontSize: 40),
        ),
        Text(
          'mon',
          style: GoogleFonts.berkshireSwash(
              color: Color(0xffdf3788).withOpacity(0.7), fontSize: 40),
        ),
        Text(
          'do',
          style: GoogleFonts.berkshireSwash(
              color: Color(0xffea8631).withOpacity(0.7), fontSize: 40),
        )
      ],
    );
  }
}
