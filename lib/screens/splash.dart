import 'package:flutter/material.dart';
import 'package:lending/screens/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final TextStyle _titleTextStyle = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
      fontSize: height * 0.036,
    );

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: width,
          height: height,
          // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 95),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'images/loan.png',
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Lending",
                      style: _titleTextStyle.copyWith(color: Colors.black)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
