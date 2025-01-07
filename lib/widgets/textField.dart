import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  customTextField({this.hinttext, this.onchanged, this.obscuretext = false });
  final String? hinttext;
  Function(dynamic)? onchanged;
  bool obscuretext;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      obscureText: obscuretext,
      obscuringCharacter: '*',
      onChanged: onchanged,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
