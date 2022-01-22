import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  final String? type;
  const CustomTextField({
    Key? key,
    required this.typeController,
    required this.type,
  }) : super(key: key);

  final TextEditingController typeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 8,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: accentColor1,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: typeController,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.only(
                    left: 10, bottom: 11, top: 11, right: 15),
                icon: Icon(
                  (type == 'Email') ? Icons.mail : Icons.person,
                  color: primaryColor3,
                ),
                hintText: type,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
