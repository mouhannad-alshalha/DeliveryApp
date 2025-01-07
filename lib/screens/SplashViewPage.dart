

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proje/screens/LoginPage.dart';

class Splashviewpage extends StatefulWidget {
  const Splashviewpage({super.key});
  

  @override
  State<Splashviewpage> createState() => _SplashviewpageState();
}

class _SplashviewpageState extends State<Splashviewpage>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fading;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1300));
    fading = Tween<double>(begin: .0, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    gotonextview();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff65a5c1),
        body: Column(children: [
          Image.asset(
            'asset/image/spalsh.jpg',
            width: double.infinity,
          ),
          SizedBox(
            height: 50,
          ),
          FadeTransition(
            opacity: fading!,
            child: Text(
              'Fast Delivery',
              style: TextStyle(
                  fontFamily: 'Anton',
                  fontSize: 44,
                  fontWeight: FontWeight.w600),
            ),
          )
        ]));
  }

  void gotonextview() {
    Future.delayed(Duration(seconds: 5), () {
      Get.to(() => Loginpage(),transition: Transition.downToUp );
    });
  }
}
