import 'package:flutter/material.dart';
import 'package:lending/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.30,
          horizontal: width * 0.20,
        ),
        decoration:
            BoxDecoration(color: const Color(0xFFFFEFD4).withOpacity(0.5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'images/loan.png',
                  ),
                ),
                Spacer(),
                Text(
                  'Lending',
                  style: textStyle,
                ),
              ],
            ),
            Container(
              height: height * 0.30,
              width: width * 0.85,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(),
            ),
          ],
        ),
      ),
    );
  }
}
