// import 'dart:html';

import 'package:CaptainSayedApp/main.dart';
import 'package:CaptainSayedApp/screens/aftersplash.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../sizeConfig.dart';

class NewSplash extends StatefulWidget {
  static const screenName = "/newsplash";
  final bool isJustWatingForStreamBuilder;
  final bool wilNavigateToHome;
  const NewSplash(
      {this.isJustWatingForStreamBuilder, this.wilNavigateToHome = false});

  @override
  _NewSplashState createState() => _NewSplashState();
}

class _NewSplashState extends State<NewSplash> {
  @override
  void initState() {
    if (!widget.isJustWatingForStreamBuilder) {
      Future.delayed(
        const Duration(seconds: 5),
        () {
          widget.wilNavigateToHome
              ? Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => HomeScreen()), (_) => false)
              : Navigator.of(context).pushAndRemoveUntil(
                  PageTransition(
                    child: AfterSplash(),
                    type: PageTransitionType.fade,
                  ),
                  (_) => false);
        },
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: Stack(
          children: [
            Center(
                child: isDark
                    ? Image.asset(
                        'assets/images/get_fit.png',
                      )
                    : Image.asset(
                        'assets/images/splash_light.png',
                      )),
          ],
        ),
      ),
    );
  }
}
