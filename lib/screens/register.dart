import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';
import 'package:lending/screens/login.dart';
import 'package:lending/widgets/custom_page_route.dart';
import 'package:lending/widgets/custom_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cpasswordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  bool _passwordVisible = false;
  bool _cpasswordVisible = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.10,
          horizontal: width * 0.05,
        ),
        decoration: const BoxDecoration(color: primaryColor1),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                'images/loan.png',
              ),
            ),
            const Spacer(),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.015,
                      ),
                      CustomTextField(
                          typeController: fnameController, type: 'Full Name'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomTextField(
                        typeController: emailController,
                        type: 'Email',
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
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
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                controller: passwordController,
                                obscureText: !_passwordVisible,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: const EdgeInsets.only(
                                      left: 10, bottom: 11, top: 11, right: 15),
                                  icon: const Icon(
                                    Icons.lock,
                                    color: primaryColor3,
                                  ),
                                  hintText: 'Password',
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                    child: Icon(
                                        _passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey[700]),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
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
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                controller: cpasswordController,
                                obscureText: !_cpasswordVisible,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: const EdgeInsets.only(
                                      left: 10, bottom: 11, top: 11, right: 15),
                                  icon: const Icon(
                                    Icons.lock,
                                    color: primaryColor3,
                                  ),
                                  hintText: 'Confirm Password',
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _cpasswordVisible = !_cpasswordVisible;
                                      });
                                    },
                                    child: Icon(
                                        _cpasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey[700]),
                                  ),
                                ),
                                validator: (value) {
                                  if (value != passwordController.text) {
                                    return 'Wrong password';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.045,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          final isValid = _formKey.currentState!.validate();
                          if (isValid) {
                            try {
                              await auth
                                  .createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text,
                              )
                                  .then((result) {
                                // patient.uniqueId = user!.uid;
                                Navigator.of(context).pop();
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    fullscreenDialog: true,
                                    builder: (context) => const LoginScreen(),
                                    // LoadScreen(
                                    //   auth: auth,
                                    //   currentUser: user,
                                    //   device: 'mobile',
                                    // ),
                                  ),
                                );
                              });
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'email-already-in-use') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      usedEmailText,
                                    ),
                                  ),
                                );
                              } else if (e.code == 'invalid-email') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      invalidEmailText,
                                    ),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      registerErrorSnackbar,
                                    ),
                                  ),
                                );
                              }
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: accentColor1,
                          fixedSize: Size(
                            width * 0.55,
                            height * 0.065,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: primaryColor3,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: height * 0.018,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.045,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? ',
                            style: TextStyle(
                              color: primaryColor3,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: height * 0.016,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                CustomPageRoute(
                                    direction: toRight,
                                    child: const LoginScreen()),
                              );
                            },
                            child: Text(
                              'Sign in now',
                              style: TextStyle(
                                color: accentColor2,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: height * 0.016,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
