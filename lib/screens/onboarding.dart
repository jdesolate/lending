import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor2,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: primaryColor3,
          ),
        ),
        title: Text(
          appTitle,
          style: textStyleTitle2,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: primaryColor3,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Text('Hey User!', style: textStyle),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    child:
                        Text('You\' looking great today.', style: textStyle2),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 220,
                    width: double.maxFinite,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
