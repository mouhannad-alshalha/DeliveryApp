import 'package:flutter/material.dart';
import 'package:proje/screens/LoginPage.dart';
import 'package:proje/screens/SplashViewPage.dart';
import 'package:proje/widgets/textField.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: const Color.fromARGB(255, 4, 247, 251),
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage('asset/image/bg.jpg'),
                ),
              ),
              Text(' name'),
              Positioned(
                child: Text('number'),
                left: 20,
                top: 11,
              ),
            ],
          ),
          Divider(
            thickness: 2,
            endIndent: 40,
            indent: 40,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                label: Center(child: Text('Your First Name')),
                labelStyle: TextStyle(
                  color: Color.fromARGB(244, 0, 0, 0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(234, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          SizedBox(
            height: 20,
          ),
         TextFormField(
            decoration: InputDecoration(
                label: Center(child: Text('Your Last Name')),
                labelStyle: TextStyle(
                  color: Color.fromARGB(244, 0, 0, 0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(234, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                label: Center(child: Text('Your Address')),
                labelStyle: TextStyle(
                  color: Color.fromARGB(244, 0, 0, 0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(234, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),

          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                label: Center(child: Text('Your Password')),
                labelStyle: TextStyle(
                  color: Color.fromARGB(244, 0, 0, 0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(234, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(218, 255, 0, 0),
                border: Border(
                  top: BorderSide(color: Color.fromARGB(238, 0, 0, 0)),
                  bottom: BorderSide(color: Color.fromARGB(238, 0, 0, 0)),
                  left: BorderSide(color: Color.fromARGB(238, 0, 0, 0)),
                  right: BorderSide(color: Color.fromARGB(238, 0, 0, 0)),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Loginpage();
                      },
                    ),
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'LogOut',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.logout),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
