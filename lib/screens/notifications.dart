import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);
  final itemCount = notifs.length;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: Color(0xFFDADADA),
                ),
              ),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: accentColor1,
                      elevation: 0,
                      fixedSize: Size(
                        width * 0.5,
                        60,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    child: Text(
                      'All',
                      style: TextStyle(
                        color: primaryColor3,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        fontSize: height * 0.022,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: accentColor1,
                      elevation: 0,
                      fixedSize: Size(
                        width * 0.5,
                        60,
                      ),
                    ),
                    child: Text(
                      'Loans',
                      style: TextStyle(
                        color: primaryColor3,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        fontSize: height * 0.022,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ]),
          ),
          Expanded(
            child: itemCount > 0
                ? SingleChildScrollView(
                    child: Column(
                      children: [for (var item in notifs) item],
                    ),
                  )
                : const Center(
                    child: Text(
                      'You\'re free of notifications.',
                      style: textStyle2,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
