import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';

class OB3rdBlock extends StatelessWidget {
  const OB3rdBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 194,
      width: double.maxFinite,
      color: Colors.white,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'How to secure contract?',
                  style: textStyle5,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Read and make sure to\nmeet all requirements.',
                  style: textStyle6,
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: Image.asset('images/3rdblockpic.png'),
          ),
          Positioned(
            right: -25,
            bottom: 15,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: primaryColor1,
                fixedSize: Size(
                  width * 0.70,
                  height * 0.060,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text(
                'View Qualifications',
                style: TextStyle(
                  color: secondaryColor2,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: height * 0.022,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
