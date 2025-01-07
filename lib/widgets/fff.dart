import 'package:flutter/material.dart';

class Fff extends StatelessWidget {
  const Fff({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 47, 130, 255),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
              label: Text('search'),
              labelStyle: TextStyle(fontSize: 20),
              suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 206, 206, 218),
                  )
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 206, 206, 218)),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 206, 206, 218)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
