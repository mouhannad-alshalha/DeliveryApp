import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:proje/screens/SplashViewPage.dart';
import 'package:proje/screens/mainpage.dart';
import 'package:proje/screens/profile_page.dart';

void main() {
  runApp(const proje());
}

class proje extends StatelessWidget {
  const proje({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      
      debugShowCheckedModeBanner: false, home: Splashviewpage());
  }
}
