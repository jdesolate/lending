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
              const Center(
                  child: Text(
                'Payment Amount',
                style: textStyle,
              )),
            ],
          ),
        ),
      ],
    );
  }
}
