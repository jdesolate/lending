import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:firebase_storage/firebase_storage.dart';
import 'package:lending/widgets/constants.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,

    // @required this.context,
    // @required this.auth,
  }) : super(key: key);

  // final context;
  // final auth;
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String fullname = 'Roronoa Zoro';
  File? image;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final _formKey = GlobalKey<FormState>();
    final passwordController = TextEditingController();
    final newpasswordController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.08,
          horizontal: width * 0.07,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    accInfoText,
                    style: textStyle3,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit_outlined),
                  ),
                ],
              ),
              SizedBox(height: height * 0.045),
              Column(
                children: [
                  Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
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
                        radius: 80,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/zoro.png'),
                        //image == null
                        //     ? (patient.profilePic == 'images/user.png')
                        //         ? AssetImage(patient.profilePic)
                        //         : NetworkImage(patient.profilePic)
                        //             as ImageProvider
                        //     : FileImage(image!),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: IconButton(
                          onPressed: () {
                            pickImage();
                          },
                          icon:
                              const Icon(Icons.add_a_photo, color: Colors.grey),
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(height: height * 0.10),
                  // Center(
                  //   child: Text(fullname,
                  //       style: const TextStyle(
                  //           fontFamily: 'Inter',
                  //           fontWeight: FontWeight.w600,
                  //           fontSize: 18,
                  //           color: primaryColor3)),
                  // ),
                  // SizedBox(height: height * 0.020),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("First Name",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14)),
                            TextFormField(
                              enabled: false,
                              decoration: const InputDecoration(
                                hintText: 'Roronoa',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: width * 0.020),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Last Name",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14)),
                            TextFormField(
                              enabled: false,
                              decoration: const InputDecoration(
                                hintText: 'Zoro',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.020),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(emailText,
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                  ),
                  TextFormField(
                    enabled: false,
                    decoration: const InputDecoration(
                      hintText: 'roronoazoro@gmail.com',
                    ),
                  ),
                  SizedBox(height: height * 0.020),
                  // const Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text(currentPassText,
                  //       style: TextStyle(color: primaryColor3, fontSize: 14)),
                  // ),
                  // TextFormField(
                  //   controller: passwordController,
                  //   obscureText: true,
                  //   validator: (value) {
                  //     //   if (value!.isEmpty || value != userdata.password) {
                  //     //     return currentPassErrMsg;
                  //     //   } else {
                  //     //     return null;
                  //     //   }
                  //   },
                  // ),
                  // SizedBox(height: height * 0.020),
                  // const Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text(newPassText,
                  //       style: TextStyle(color: primaryColor3, fontSize: 14)),
                  // ),
                  // TextFormField(
                  //   controller: newpasswordController,
                  //   obscureText: true,
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return newPassErrMsg;
                  //     } else {
                  //       return null;
                  //     }
                  //   },
                  // ),
                ],
              ),
              SizedBox(height: height * 0.015),
              // Align(
              //   alignment: Alignment.center,
              //   child: Container(
              //     width: width * 0.65,
              //     decoration: BoxDecoration(boxShadow: [
              //       BoxShadow(
              //         color: primaryColor2.withOpacity(0.16),
              //         blurRadius: 8,
              //         offset: const Offset(0, 4), // changes position of shadow
              //       ),
              //     ]),
              //     child: ElevatedButton(
              //       onPressed: () async {
              //         // final isValid = _formKey.currentState!.validate();
              //         // if (isValid) {
              //         //   try {
              //         //     await widget.auth.currentUser!
              //         //         .updatePassword(newpasswordController.text)
              //         //         .then((value) {
              //         //       userDataCollection
              //         //           .doc(userdata.uniqueId)
              //         //           .update({
              //         //             'password': newpasswordController.text,
              //         //           })
              //         //           .then((value) => print('Add Admin User'))
              //         //           .catchError((error) => print(
              //         //               'Failed to add Admin user: $error'));
              //         //       uploadFile();
              //         //       ScaffoldMessenger.of(context).showSnackBar(
              //         //         const SnackBar(
              //         //           content: Text(
              //         //             reauthSnackbar,
              //         //           ),
              //         //         ),
              //         //       );
              //         //       Future.delayed(const Duration(seconds: 3),
              //         //           () {
              //         //         setLocalSignOut();
              //         //         widget.auth.signOut();
              //         //         navigatorData.mainBody = null;
              //         //         Navigator.pop(context);
              //         //         Navigator.push(
              //         //           context,
              //         //           MaterialPageRoute(
              //         //             builder: (context) => App(),
              //         //           ),
              //         //         );
              //         //       });
              //         //     });
              //         //   } on FirebaseAuthException catch (e) {
              //         //     print(e);
              //         //     if (e.code == 'weak-password') {
              //         //       ScaffoldMessenger.of(context).showSnackBar(
              //         //         const SnackBar(
              //         //           content: Text(
              //         //             passWeakSnackbar,
              //         //           ),
              //         //         ),
              //         //       );
              //         //     } else {
              //         //       ScaffoldMessenger.of(context).showSnackBar(
              //         //         const SnackBar(
              //         //           content: Text(
              //         //             passUpdateSnackbar,
              //         //           ),
              //         //         ),
              //         //       );
              //         //     }
              //         //   }
              //         // } else {
              //         //   ScaffoldMessenger.of(context).showSnackBar(
              //         //     const SnackBar(
              //         //       content: Text(
              //         //         reviewFieldErrMsg,
              //         //       ),
              //         //     ),
              //         //   );
              //         // }
              //       },
              //       style: ElevatedButton.styleFrom(
              //         primary: accentColor1,
              //         fixedSize: Size(
              //           width * 0.25,
              //           height * 0.055,
              //         ),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(40.0),
              //         ),
              //       ),
              //       child: Text(
              //         btnTextSave,
              //         style: TextStyle(
              //           color: primaryColor3,
              //           fontFamily: 'Inter',
              //           fontWeight: FontWeight.w600,
              //           fontSize: height * 0.018,
              //           decoration: TextDecoration.none,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  //patient-settings-functions
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imagePermanent = await saveImagePermanently(image.path);
      setState(() {
        this.image = imagePermanent;
        print('Image path:' + image.path);
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  // Future uploadFile() async {
  //   Reference ref = FirebaseStorage.instance
  //       .ref('profilePics/${patient.uniqueId}/')
  //       .child('patient_image.png');
  //   try {
  //     await ref.putFile(image!).then((_image) async {
  //       await ref.getDownloadURL().then((value) {
  //         patient.profilePic = value;
  //         patientCollection
  //             .doc(patient.uniqueId)
  //             .update({
  //               'ProfilePic': patient.profilePic,
  //             })
  //             .then((value) => print('profile pic updated'))
  //             .catchError(
  //                 (error) => print('Failed to update profile pic: $error'));
  //       });
  //     });
  //   } on FirebaseException catch (e) {
  //     print(e);
  //   }
  // }

}
