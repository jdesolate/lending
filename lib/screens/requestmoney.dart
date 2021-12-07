import 'package:flutter/material.dart';
import 'package:lending/constants.dart';
import 'package:lending/screens/requestmoney2.dart';

class RequestMoney extends StatefulWidget {
  const RequestMoney({Key? key}) : super(key: key);

  @override
  _RequestMoneyState createState() => _RequestMoneyState();
}

class _RequestMoneyState extends State<RequestMoney> {
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
                    color: secondaryColor2,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    const Text('Request Money',
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
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  contract,
                                  style: textStyle3,
                                ),
                                SizedBox(
                                  height: height * 0.15,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Text(
                                    'Download Docx',
                                    style: TextStyle(
                                      color: secondaryColor,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.025,
                                ),
                                const Text(
                                  confirm,
                                  style: textStyle2,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height * 0.035,
                                ),
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
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: Text(
                                    'Upload Contract',
                                    style: TextStyle(
                                      color: primaryColor3,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: height * 0.022,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.035,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputMoney()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: secondaryColor2,
                  fixedSize: Size(
                    width * 0.65,
                    height * 0.060,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                child: Text(
                  'Continue',
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
      ),
    );
  }
}
