import 'dart:async';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prokit/screens/BHWalkThroughScreen.dart';
import 'package:prokit/main.dart';

class BHSplashScreen extends StatefulWidget {
  static String tag = '/BHSplashScreen';

  @override
  BHSplashScreenState createState() => BHSplashScreenState();
}

class BHSplashScreenState extends State<BHSplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    Timer(Duration(seconds: 5), () {
      finish(context);
      BHWalkThroughScreen().launch(context);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: SvgPicture.asset(
  //         'images/bh_logo.svg',
  //         height: 250,
  //         width: 250,
  //         color: appStore.isDarkModeOn ? white : Colors.black.withOpacity(0.7),
  //       ),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your big picture widget here
            SvgPicture.asset(
              'images/bh_logo.svg',
              height: 250,
              width: 250,
              color: appStore.isDarkModeOn ? Colors.white : Colors.black.withOpacity(0.7),
            ),

            // BarberBay logo
            SizedBox(height: 20),
            Text(
              'BarberBay',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.orange, // Set the color to orange
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 2,
                    offset: Offset(1, 1),
                  ),
                ],
                // color: appStore.isDarkModeOn ? Colors.white : Colors.black,
                // Add any additional styling here
              ),
            ),
          ],
        ),
      ),
    );
  }
}
