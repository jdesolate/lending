import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';
import 'package:lending/screens/login.dart';
import 'package:lending/screens/register.dart';
import 'package:lending/widgets/custom_page_route.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      decoration: const BoxDecoration(color: primaryColor1),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.25,
          horizontal: width * 0.08,
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
                  children: [
                    RichText(
                      text: TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: textStyle,
                        children: <TextSpan>[
                          const TextSpan(text: 'Welcome\nto '),
                          TextSpan(text: appTitle, style: textStyleTitle),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        'images/loan.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.045,
                ),
                const Text(
                  'Don’t have enough money?\nJust sign in and request for loan.\nWe have your back.',
                  style: textStyle2,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.055,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        CustomPageRoute(
                            direction: toLeft, child: const LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: accentColor1,
                    elevation: 3,
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
                      color: primaryColor3,
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
                        CustomPageRoute(
                            direction: toLeft, child: const RegisterScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor1,
                    onPrimary: accentColor2,
                    onSurface: accentColor2,

                    side: const BorderSide(
                      width: 1,
                      color: accentColor2,
                    ), //border width and color
                    elevation: 3, //elevation of button
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
                      color: accentColor2,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
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
    );
  }
}
