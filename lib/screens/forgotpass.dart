import 'package:flutter/material.dart';
import 'package:lending/constants.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({
    Key? key,
    // required this.auth,
    // @required this.currentUser,
  }) : super(key: key);
  // final FirebaseAuth auth;
  // final currentUser;

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState(
      // auth: auth,
      // currentUser: currentUser,
      );
}

class _ForgotPasswordState extends State<ForgotPassword> {
  _ForgotPasswordState(
      // required this.auth,
      // @required this.currentUser,
      );
  // final FirebaseAuth auth;
  // final currentUser;
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: height * 0.18,
            horizontal: width * 0.10,
          ),
          decoration: const BoxDecoration(color: primaryColor2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      'images/loan.png',
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const Text(
                    'Lending',
                    style: textStyle,
                  ),
                ],
              ),
              const Spacer(),
              Container(
                height: height * 0.48,
                width: width * 0.85,
                decoration: BoxDecoration(
                  color: primaryColor1,
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                      color: primaryColor3.withOpacity(0.25),
                      blurRadius: 5,
                      offset: const Offset(3, 4), // changes position of shadow
                    ),
                    BoxShadow(
                      color: primaryColor3.withOpacity(0.25),
                      blurRadius: 5,
                      offset: const Offset(3, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () => Navigator.pop(context),
                                child: const Icon(Icons.arrow_back),
                              ),
                              SizedBox(
                                width: width * 0.025,
                              ),
                              const Text('Reset Password'),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.065,
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              suffixIcon: Icon(
                                Icons.email,
                                color: primaryColor3,
                              ),
                              labelText: 'Email Address',
                            ),
                            validator: (value) {
                              if (value == null) {
                                return 'Input a valid email address.';
                              }
                            },
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.035,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              final isValid = _formKey.currentState!.validate();
                              if (isValid) {
                                // try {
                                //   await FirebaseAuth.instance
                                //       .sendPasswordResetEmail(
                                //     email: emailController.text,
                                //   )
                                //       .then((result) {
                                //     if (isValid) {
                                //       ScaffoldMessenger.of(context)
                                //           .showSnackBar(
                                //         const SnackBar(
                                //           content: Text(
                                //             reqSuccessSnackbar,
                                //           ),
                                //         ),
                                //       );
                                //       Navigator.of(context).pop();
                                //       Navigator.of(context).push(
                                //         MaterialPageRoute(
                                //           fullscreenDialog: true,
                                //           builder: (context) => Homepage(),
                                //         ),
                                //       );
                                //     } else {
                                //       ScaffoldMessenger.of(context)
                                //           .showSnackBar(
                                //         const SnackBar(
                                //           content: Text(
                                //             reqFailedSnackbar,
                                //           ),
                                //         ),
                                //       );
                                //     }
                                //   });
                                // } on FirebaseAuthException catch (e) {
                                //   print(e);
                                //   if (e.code == 'email-already-in-use') {
                                //     ScaffoldMessenger.of(context)
                                //         .showSnackBar(
                                //       const SnackBar(
                                //         content: Text(
                                //           emailInUseSnackbar,
                                //         ),
                                //       ),
                                //     );
                                //   } else if (e.code == 'invalid-email') {
                                //     ScaffoldMessenger.of(context)
                                //         .showSnackBar(
                                //       const SnackBar(
                                //         content: Text(
                                //           invalidEmailSnackbar,
                                //         ),
                                //       ),
                                //     );
                                //   } else {
                                //     ScaffoldMessenger.of(context)
                                //         .showSnackBar(
                                //       const SnackBar(
                                //         content: Text(
                                //           emailUnregisteredSnackbar,
                                //         ),
                                //       ),
                                //     );
                                //   }
                                // }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: accentColor1,
                              fixedSize: Size(
                                width * 0.40,
                                height * 0.055,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            child: Text(
                              'Send Request',
                              style: TextStyle(
                                color: primaryColor3,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: height * 0.018,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.030,
                          ),
                        ],
                      ),
                    ],
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
