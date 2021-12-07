import 'package:flutter/material.dart';
import 'package:lending/constants.dart';

class PayLoan extends StatelessWidget {
  const PayLoan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
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
                    color: accentColor3,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    const Text('Pay Loan',
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
                      child: Column(
                        children: [
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                  'images/loan.png',
                                ),
                              ),
                              Image.asset(
                                'images/gcash.png',
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            payment,
                            style: textStyle2,
                          ),
                          const Spacer(),
                        ],
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
                  primary: accentColor1,
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
                    color: primaryColor3,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: height * 0.022,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
