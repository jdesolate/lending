import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final TextStyle _textStyle = TextStyle(
      color: Colors.black,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
      fontSize: height * 0.034,
      decoration: TextDecoration.none,
    );
    final TextStyle _textStyle2 = TextStyle(
      color: Colors.black,
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal,
      fontSize: height * 0.016,
      decoration: TextDecoration.none,
    );

    return Container(
      decoration:
          BoxDecoration(color: const Color(0xFFFFEFD4).withOpacity(0.5)),
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
                  children: [
                    Text(
                      'Welcome\nto Lending',
                      style: _textStyle,
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
                  height: height * 0.025,
                ),
                Text(
                  'Don’t have enough money?\nJust sign in and request for loan.\nWe have your back.',
                  style: _textStyle2,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF14213D),
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFE5E5E5),
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
    );
  }
}
