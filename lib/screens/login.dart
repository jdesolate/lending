import 'package:flutter/material.dart';
import 'package:lending/constants.dart';
import 'package:lending/screens/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // final FirebaseAuth auth = FirebaseAuth.instance;
  bool _passwordVisible = false;

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
          decoration:
              BoxDecoration(color: const Color(0xFFF6E6CE).withOpacity(0.5)),
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 5,
                      offset: const Offset(3, 4), // changes position of shadow
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 5,
                      offset: const Offset(3, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.015,
                          ),
                          TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              hintText: 'Username',
                            ),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            controller: passwordController,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              icon: const Icon(
                                Icons.lock,
                                color: Colors.black,
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
                          SizedBox(
                            height: height * 0.025,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              // try {
                              //   await auth
                              //       .signInWithEmailAndPassword(
                              //     email: emailController.text,
                              //     password: passwordController.text,
                              //   )
                              //       .then((result) {
                              //     User? user = auth.currentUser;
                              //     patient.uniqueId = user!.uid;
                              //     Navigator.of(context).pop();
                              //     Navigator.of(context).push(
                              //       MaterialPageRoute(
                              //         fullscreenDialog: true,
                              //         builder: (context) => LoadScreen(
                              //           auth: auth,
                              //           currentUser: user,
                              //           device: 'mobile',
                              //         ),
                              //       ),
                              //     );
                              //   });
                              // } on FirebaseAuthException catch (e) {
                              //   if (e.code == 'user-not-found') {
                              //     ScaffoldMessenger.of(context)
                              //         .showSnackBar(
                              //       const SnackBar(
                              //         content: Text(
                              //           noUserSnackbar,
                              //         ),
                              //       ),
                              //     );
                              //   } else if (e.code == 'wrong-password') {
                              //     ScaffoldMessenger.of(context)
                              //         .showSnackBar(
                              //       const SnackBar(
                              //         content: Text(
                              //           wrongPassSnackbar,
                              //         ),
                              //       ),
                              //     );
                              //   } else {
                              //     ScaffoldMessenger.of(context)
                              //         .showSnackBar(
                              //       const SnackBar(
                              //         content: Text(
                              //           loginErrorSnackbar,
                              //         ),
                              //       ),
                              //     );
                              //   }
                              // }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF101118),
                              fixedSize: Size(
                                width * 0.45,
                                height * 0.060,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            child: Text(
                              'Login',
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
                            height: height * 0.020,
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => ForgotPassword(
                              //             auth: auth,
                              //             currentUser: auth.currentUser,
                              //           )),
                              // );
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: const Color(0xFF14213D),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: height * 0.017,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.025,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account yet? ',
                                style: TextStyle(
                                  color: const Color(0xFF101118),
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
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterScreen()),
                                  );
                                },
                                child: Text(
                                  'Sign up now',
                                  style: TextStyle(
                                    color: const Color(0xFF96006C),
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
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
