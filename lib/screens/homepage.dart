import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';
import 'package:lending/screens/payloan.dart';
import 'package:lending/screens/qualifications.dart';
import 'package:lending/screens/requestmoney.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.035,
          horizontal: width * 0.025,
        ),
        width: double.infinity,
        decoration: BoxDecoration(color: primaryColor2.withOpacity(0.5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: primaryColor1,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      'images/loan.png',
                    ),
                  ),
                  SizedBox(
                    width: width * 0.10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: width * 0.35,
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: secondaryColor2,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Column(
                            children: [
                              Image.asset(
                                'images/money-bag.png',
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              const Text(
                                'Loaned',
                                style: TextStyle(
                                  color: primaryColor1,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: width * 0.35,
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: accentColor1,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Column(
                            children: [
                              Image.asset(
                                'images/pay.png',
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: height * 0.010,
                              ),
                              const Text(
                                'To Pay',
                                style: TextStyle(
                                  color: primaryColor3,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.15,
                  ),
                  const Text(
                    'Lending',
                    style: TextStyle(
                      color: primaryColor3,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.15),
              child: SizedBox(
                height: height * 0.37,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ViewQualifications()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: accentColor1.withOpacity(0.45),
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 4), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.history_edu_outlined,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.038,
                          ),
                          const Text(
                            'View Qualifications',
                            style: textStyle3,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: primaryColor3.withOpacity(0.8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RequestMoney()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: accentColor1.withOpacity(0.45),
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 4), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.request_quote_outlined,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.035,
                          ),
                          const Text(
                            'Request Money',
                            style: textStyle3,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: primaryColor3.withOpacity(0.8),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PayLoan()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: accentColor1.withOpacity(0.45),
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 4), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.payments_outlined,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.035,
                          ),
                          const Text(
                            'Pay Loan',
                            style: textStyle3,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: primaryColor3.withOpacity(0.8),
                    ),
                  ],
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
