import 'package:flutter/material.dart';
import 'package:lending/constants.dart';
import 'package:lending/screens/login.dart';
import 'package:lending/screens/register.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        decoration:
            BoxDecoration(color: const Color(0xFFFDFBF7).withOpacity(0.5)),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: height * 0.30,
            horizontal: width * 0.20,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Welcome\nto Lending',
                        style: textStyle,
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          'images/loan.png',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  const Text(
                    'Don’t have enough money?\nJust sign in and request for loan.\nWe have your back.',
                    style: textStyle2,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF101118),
                      fixedSize: Size(
                        width * 0.65,
                        height * 0.060,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        fontSize: height * 0.022,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.030,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFECA82E),
                      fixedSize: Size(
                        width * 0.65,
                        height * 0.060,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        fontSize: height * 0.022,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
