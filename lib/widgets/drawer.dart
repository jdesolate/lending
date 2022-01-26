import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Material(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: double.maxFinite,
                height: 285,
                child: Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 145,
                      decoration: BoxDecoration(
                        color: accentColor1.withOpacity(0.85),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 5, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 95,
                      left: 25,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 2),
                                blurRadius: 3,
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0)
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 47,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('images/zoro.png'),
                            // (patient.profilePic == 'images/user.png')
                            //     ? AssetImage(patient.profilePic)
                            //     : NetworkImage(patient.profilePic) as ImageProvider,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: 25,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Juan Dela Cruz',
                            style: textStyle3,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'juandelacruz@gmail.com',
                            style: textStyle6,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // InkWell(
              //   child: Ink(
              //     decoration: BoxDecoration(
              //         gradient: LinearGradient(
              //             begin: Alignment.topRight,
              //             end: Alignment.bottomLeft,
              //             colors: hoverGradient)),
              //     child:
              ListTile(
                leading: const Icon(
                  Icons.home_outlined,
                  color: primaryColor3,
                ),
                title: const Text('Home', style: textStyle2),
                hoverColor: accentColor1,
                focusColor: accentColor1,
                onTap: () {},
              ),
              //   ),
              // ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(
                  Icons.person_add_alt_1_outlined,
                  color: primaryColor3,
                ),
                title: const Text('Profile', style: textStyle2),
                hoverColor: accentColor1,
                focusColor: accentColor1,
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout_outlined,
                  color: primaryColor3,
                ),
                title: const Text('Logout', style: textStyle2),
                hoverColor: accentColor1,
                focusColor: accentColor1,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  const CircleAvatar(
//                       radius: 40,
//                       backgroundColor: Colors.white,
//                       backgroundImage: AssetImage('images/zoro.png'),
//                       // (patient.profilePic == 'images/user.png')
//                       //     ? AssetImage(patient.profilePic)
//                       //     : NetworkImage(patient.profilePic) as ImageProvider,
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text('Juan Dela Cruz',
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Colors.white,
//                         )),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       'juandelacruz@gmail.com',
//                       style: TextStyle(color: Colors.white, fontSize: 16),
//                     ),
