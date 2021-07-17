import 'package:flutter/material.dart';
import 'package:mitso_profiler/profile/profile_content.dart';
import 'package:mitso_profiler/schedule/schedule.dart';

import '../constants.dart';
import 'header_profile.dart';

/// This is the stateful widget that the main application instantiates.
class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => Profile();
}

class Profile extends State<ProfileWidget>  {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ProfileContent(),
    ScheduleWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Расписание',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: defaultColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
