import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proje/screens/mainpage.dart';
import 'package:proje/widgets/textField.dart';

class Registerpage extends StatelessWidget {
  Registerpage({super.key});
  String? password;
  String? cpassword;
  String? firstname;
  String? lastname;
  int? number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 130, 255),
      body: Stack(
        children: [
          Image.asset(
          'asset/image/bg.jpg',
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Welcome To Our App',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'register',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              customTextField(
                onchanged: (data) {
                  data = number;
                },
                hinttext: 'your number',
              ),
              SizedBox(
                height: 20,
              ),
              customTextField(
                onchanged: (data) {
                  data = firstname;
                },
                hinttext: 'your first name',
              ),
              SizedBox(
                height: 20,
              ),
              customTextField(
                onchanged: (data) {
                  data = lastname;
                },
                hinttext: 'your last name',
              ),
              SizedBox(
                height: 20,
              ),
              customTextField(
                obscuretext: true,
                onchanged: (data) {
                  data = password;
                },
                hinttext: 'password',
              ),
              SizedBox(
                height: 20,
              ),
              customTextField(
                obscuretext: true,
                onchanged: (data) {
                  data = cpassword;
                },
                hinttext: 'confirm password',
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MainPage();
                      },
                    ),
                  );
                },
                child: Container(
                  child: Center(
                      child: Text(
                    'Register',
                    style: TextStyle(
                        color: Color.fromARGB(255, 47, 130, 255), fontSize: 24),
                  )),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      'Alredy Have Account?',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      '  Login Now',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
     ] ),

    );
  }
}
