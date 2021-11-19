import 'package:flutter/material.dart';

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
        resizeToAvoidBottomInset: true,
        body: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF6E6CE).withOpacity(0.5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      'images/loan.png',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.10,
              ),
              Form(
                key: _formKey,
                child: Container(
                  height: height * 0.45,
                  width: width * 0.85,
                  alignment: Alignment.center,
                  child: AspectRatio(
                    aspectRatio: 4 / 5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 25.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 5,
                            offset: const Offset(
                                3, 4), // changes position of shadow
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 5,
                            offset: const Offset(
                                3, 4), // changes position of shadow
                          ),
                        ],
                      ),
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
                                height: height * 0.030,
                              ),
                              TextFormField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.email,
                                    color: Colors.black,
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
                              ElevatedButton(
                                onPressed: () async {
                                  final isValid =
                                      _formKey.currentState!.validate();
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
                                  primary: const Color(0xFF14213D),
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
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
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
                ),
              ),
              SizedBox(
                height: height * 0.10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
