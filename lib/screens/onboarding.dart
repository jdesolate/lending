import 'package:flutter/material.dart';
import 'package:lending/screens/activities.dart';
import 'package:lending/screens/home_revamp.dart';
import 'package:lending/screens/notifications.dart';
import 'package:lending/widgets/constants.dart';
import 'package:lending/widgets/drawer.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Activities(),
    Notifications(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor1,
        iconTheme: const IconThemeData(color: primaryColor3),
        title: Text(
          appTitle,
          style: textStyleTitle2,
        ),
        centerTitle: true,
      ),
      drawer: const SideDrawer(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt_outlined,
            ),
            label: 'Activities',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
            ),
            label: 'Notifications',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
