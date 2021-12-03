import 'package:flutter/material.dart';
import 'package:user_profile/home.dart';
import 'package:user_profile/settings.dart';
import 'package:user_profile/user_profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  final pages = [
    Home(),
    UserProfile(),
    Settings()
  ];
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.amberAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), title: Text('Home', style: TextStyle(color: Colors.black),)),
          BottomNavigationBarItem(icon: Icon(Icons.account_box, color: Colors.black,), title: Text('Profile', style: TextStyle(color: Colors.black),)),
          BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.black,), title: Text('Settings', style: TextStyle(color: Colors.black),)),
        ],
        onTap: (index){
          _currentIndex = index;
          setState(() {

          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}
