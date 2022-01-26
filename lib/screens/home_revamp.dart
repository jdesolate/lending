import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';
import 'package:lending/widgets/onboarding/amount_feature.dart';
import 'package:lending/widgets/onboarding/ob_fourth_block.dart';
import 'package:lending/widgets/onboarding/ob_second_block.dart';
import 'package:lending/widgets/onboarding/ob_third_block.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: homeGradient,
        )),
        height: height * 1.5,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              top: -50,
              right: -100,
              child: Container(
                width: 850,
                height: 800,
                decoration: const BoxDecoration(
                  color: circleColor1,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              left: 15,
              child: Container(
                width: 850,
                height: 800,
                decoration: BoxDecoration(
                  color: circleColor2,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Text('Hey User!', style: textStyle),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: Text('You\' looking good today.', style: textStyle2),
                ),
                SizedBox(
                  height: 30,
                ),
                AmountFeature(),
                SizedBox(
                  height: 30,
                ),
                OB2ndBlock(),
                SizedBox(
                  height: 30,
                ),
                OB3rdBlock(),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: OB4thBlock(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
