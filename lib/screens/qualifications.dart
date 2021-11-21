import 'package:flutter/material.dart';
import 'package:lending/constants.dart';

class ViewQualifications extends StatelessWidget {
  const ViewQualifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.025,
          horizontal: width * 0.045,
        ),
        width: double.infinity,
        decoration: const BoxDecoration(color: primaryColor2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: height * 0.80,
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              decoration: BoxDecoration(
                  color: primaryColor3,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  const Text('Qualifications',
                      style: TextStyle(
                        color: primaryColor1,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 36,
                        decoration: TextDecoration.none,
                      )),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Container(
                    height: height * 0.65,
                    width: double.infinity,
                    padding: const EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                        color: primaryColor1,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Text(
                      contract,
                      style: textStyle3,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: primaryColor3,
                fixedSize: Size(
                  width * 0.65,
                  height * 0.060,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              child: Text(
                'Back',
                style: TextStyle(
                  color: primaryColor1,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: height * 0.022,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
