import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showLoadingSellers = false;
  dynamic _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //Initializing Timer

    _timer = Timer(
        Duration(seconds: 3),
        () => {
              showLoadingSellers = true,
              setState(() {}),
            });
  }

  @override
  void dispose() {
    //Disposing the Timer
    _timer.cancal();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xffE6F3EC),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Title of Splash Screen
            Text(
              'Better Buys',
              style: GoogleFonts.pacifico(
                color: const Color(0xff4E8489),
                fontSize: 30,
              ),
            ),
            //LoadingAnimation
            if (showLoadingSellers)
              SizedBox(
                height: 20.0,
                width: 20.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4E8489)),
                  strokeWidth: 1.5,
                ),
              ),
            if (showLoadingSellers)
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  'Loading Sellers',
                  style: GoogleFonts.poppins(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
