import 'package:flutter/material.dart';
import 'package:lending/constants.dart';
import 'package:lending/screens/homepage.dart';
import 'package:lending/screens/login.dart';
import 'package:lending/screens/profilepage.dart';
import 'package:lending/screens/qualifications.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(optionStyle: optionStyle),
    ProfilePage(optionStyle: optionStyle),
    LoggingOut(optionStyle: optionStyle),
    ViewQualifications(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Logout',
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class LoggingOut extends StatelessWidget {
  const LoggingOut({
    Key? key,
    required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor2,
      child: AlertDialog(
        // title: const Text('Sign out'),
        backgroundColor: primaryColor1,
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('Log out of Lending?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () =>
                Future.delayed(const Duration(milliseconds: 500), () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            }),
            child: const Text(
              'Yes',
              style: TextStyle(color: accentColor1),
            ),
          ),
        ],
      ),
    );
  }
}
