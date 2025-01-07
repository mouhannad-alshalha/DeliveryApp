import 'package:flutter/material.dart';
import 'package:proje/screens/favoritepage.dart';
import 'package:proje/screens/homepage.dart';
import 'package:proje/screens/profile_page.dart';
import 'package:proje/screens/MyOrderPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int myindex = 0;
  var scrreen = [Homepage(), MyOrderPage(), Favoritepage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: scrreen[myindex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          type: BottomNavigationBarType.shifting,
          currentIndex: myindex,
          unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: Color.fromARGB(213, 0, 0, 0),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 47, 130, 255),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'My Order',
              backgroundColor: Color.fromARGB(255, 47, 130, 255),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: Color.fromARGB(255, 47, 130, 255),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Color.fromARGB(255, 47, 130, 255),
            )
          ]),
    );
  }
}
