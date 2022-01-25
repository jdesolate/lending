import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';

class OB4thBlock extends StatelessWidget {
  const OB4thBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 180,
      width: 330,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: fourthBlockGradient,
          ),
          borderRadius: BorderRadius.circular(10.0)),
      child: Stack(
        children: [
          Positioned(
            left: 15,
            top: 30,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: const Icon(Icons.credit_card),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
              top: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'How to Pay?',
                  style: textStyle7,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Pay as soon as possible with\nGCash.',
                  style: textStyle8,
                ),
              ],
            ),
          ),
          Positioned(
            right: -25,
            bottom: 15,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: accentColor3,
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
                  color: Colors.white,
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
