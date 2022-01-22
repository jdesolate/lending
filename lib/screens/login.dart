import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lending/widgets/constants.dart';
import 'package:lending/screens/forgotpass.dart';
import 'package:lending/screens/home.dart';
import 'package:lending/screens/register.dart';
import 'package:lending/widgets/custom_page_route.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(color: primaryColor1),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: width * 0.05,
          ),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.15,
              ),
              const CircleAvatar(
                radius: 45,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'images/loan.png',
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                            color: primaryColor1,
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
                                controller: emailController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 10, bottom: 11, top: 11, right: 15),
                                  icon: Icon(
                                    Icons.person,
                                    color: primaryColor3,
                                  ),
                                  hintText: 'Email',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.045,
                      ),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                            color: primaryColor1,
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
                        height: height * 0.065,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          try {
                            await auth
                                .signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                            )
                                .then((result) {
                              User? user = auth.currentUser;
                              // patient.uniqueId = user!.uid;
                              Navigator.of(context).pop();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (context) => const HomeScreen(),
                                  // LoadScreen(
                                  //   auth: auth,
                                  //   currentUser: user,
                                  //   device: 'mobile',
                                  // ),
                                ),
                              );
                            });
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    noUserSnackbar,
                                  ),
                                ),
                              );
                            } else if (e.code == 'wrong-password') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    wrongPassSnackbar,
                                  ),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    loginErrorSnackbar,
                                  ),
                                ),
                              );
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
                          'Log In',
                          style: TextStyle(
                            color: primaryColor3,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.022,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.045,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword(
                                    // auth: auth,
                                    // currentUser: auth.currentUser,
                                    )),
                          );
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: accentColor1,
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
                            'Don\'t have an account yet? ',
                            style: TextStyle(
                              color: primaryColor3,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: height * 0.017,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                CustomPageRoute(
                                    direction: toLeft,
                                    child: const RegisterScreen()),
                              );
                            },
                            child: Text(
                              'Sign up now',
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
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
