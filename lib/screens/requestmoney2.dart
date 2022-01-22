import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';

class InputMoney extends StatefulWidget {
  InputMoney({Key? key}) : super(key: key);
  String moneyRequest = '';
  @override
  _InputMoneyState createState() => _InputMoneyState();
}

class _InputMoneyState extends State<InputMoney> {
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
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                decoration: BoxDecoration(
                    color: primaryColor1,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    const Text('Request Money',
                        style: TextStyle(
                          color: primaryColor3,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 36,
                          decoration: TextDecoration.none,
                        )),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Container(
                      height: height * 0.15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: secondaryColor2,
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Center(
                        child: Text(
                          'PHP ${widget.moneyRequest}',
                          style: textStyle4,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Expanded(
                      child: GridView.count(
                        childAspectRatio: 1.5,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(20.0),
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                        crossAxisCount: 3,
                        children: [
                          InkWell(
                            onTap: () => setState(() {
                              widget.moneyRequest += '1';
                            }),
                            child: const NumberButtons(
                              number: '1',
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              widget.moneyRequest += '2';
                            }),
                            child: const NumberButtons(
                              number: '2',
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              widget.moneyRequest += '3';
                            }),
                            child: const NumberButtons(
                              number: '3',
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              widget.moneyRequest += '4';
                            }),
                            child: const NumberButtons(
                              number: '4',
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              widget.moneyRequest += '5';
                            }),
                            child: const NumberButtons(
                              number: '5',
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              widget.moneyRequest += '6';
                            }),
                            child: const NumberButtons(
                              number: '6',
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              widget.moneyRequest += '7';
                            }),
                            child: const NumberButtons(
                              number: '7',
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              widget.moneyRequest += '8';
                            }),
                            child: const NumberButtons(
                              number: '8',
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              widget.moneyRequest += '9';
                            }),
                            child: const NumberButtons(
                              number: '9',
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              widget.moneyRequest += '0';
                            }),
                            child: const NumberButtons(
                              number: '0',
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              if (widget.moneyRequest.isNotEmpty) {
                                widget.moneyRequest = widget.moneyRequest
                                    .substring(
                                        0, widget.moneyRequest.length - 1);
                              }
                            }),
                            child: const NumberButtons(
                              number: 'X',
                            ),
                          ),
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
                  'Continue',
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

class NumberButtons extends StatelessWidget {
  const NumberButtons({
    Key? key,
    required this.number,
  }) : super(key: key);
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor1),
        color: Colors.white.withOpacity(0.05),
        boxShadow: [
          BoxShadow(
            color: primaryColor3.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          number,
          style: textStyle3,
        ),
      ),
    );
  }
}
