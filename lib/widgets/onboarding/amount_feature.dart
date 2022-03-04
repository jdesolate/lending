import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';

class AmountFeature extends StatefulWidget {
  const AmountFeature({
    Key? key,
  }) : super(key: key);

  @override
  State<AmountFeature> createState() => _AmountFeatureState();
}

class _AmountFeatureState extends State<AmountFeature>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Column(
      children: [
        Container(
          height: 50,
          color: accentColor1,
          child: TabBar(
            controller: _tabController,
            indicatorColor: primaryColor1,
            tabs: const [
              Tab(text: 'Borrowed'),
              Tab(text: 'Payment'),
            ],
          ),
        ),
        Container(
          height: 190,
          color: Colors.white,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              Stack(
                children: const [
                  Positioned(
                    top: 60,
                    left: 45,
                    child: Text(
                      'Php ',
                      style: textStyle3,
                    ),
                  ),
                  Center(
                    child: Text(
                      '10 000.00',
                      style: textStyle,
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  height: 90,
                  color: Colors.white54,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 75,
                        left: 0,
                        child: Container(
                          height: 3,
                          width: 55,
                          decoration: const BoxDecoration(
                            color: accentColor2,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 25,
                        left: 45,
                        child: Container(
                          height: 55,
                          width: 2,
                          decoration: const BoxDecoration(
                            color: accentColor1,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 5,
                        left: 15,
                        child: Text('P10 200'),
                      ),
                      Positioned(
                        top: 65,
                        left: 35,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: accentColor2,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
