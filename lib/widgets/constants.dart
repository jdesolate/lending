import 'package:flutter/material.dart';

const String toLeft = 'left';
const String toRight = 'right';
final Shader linearGradient = const LinearGradient(
  colors: <Color>[
    Color(0xffECA82E),
    Color(0xff96006C),
  ],
).createShader(const Rect.fromLTWH(130.0, 150.0, 150.0, 50.0));

TextStyle textStyleTitle = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    foreground: Paint()..shader = linearGradient);

TextStyle textStyleTitle2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    foreground: Paint()..shader = linearGradient);

const TextStyle textStyle = TextStyle(
  color: primaryColor3,
  fontWeight: FontWeight.w600,
  fontSize: 34,
  decoration: TextDecoration.none,
);
const TextStyle textStyle2 = TextStyle(
  color: primaryColor3,
  fontWeight: FontWeight.normal,
  fontSize: 18,
  decoration: TextDecoration.none,
);
const TextStyle textStyle3 = TextStyle(
  color: primaryColor3,
  fontWeight: FontWeight.w600,
  fontSize: 20,
  decoration: TextDecoration.none,
);

const TextStyle textStyle4 = TextStyle(
  color: primaryColor1,
  fontWeight: FontWeight.w400,
  fontSize: 28,
  decoration: TextDecoration.none,
);

const TextStyle textStyle5 = TextStyle(
  color: primaryColor3,
  fontWeight: FontWeight.w600,
  fontSize: 16,
  decoration: TextDecoration.none,
);

const TextStyle textStyle6 = TextStyle(
  color: primaryColor3,
  fontWeight: FontWeight.w400,
  fontSize: 14,
  decoration: TextDecoration.none,
);

const TextStyle textStyle7 = TextStyle(
  color: primaryColor1,
  fontWeight: FontWeight.w600,
  fontSize: 16,
  decoration: TextDecoration.none,
);

const TextStyle textStyle8 = TextStyle(
  color: primaryColor1,
  fontWeight: FontWeight.w400,
  fontSize: 14,
  decoration: TextDecoration.none,
);

const Color primaryColor1 = Color(0xFFFFF8E9); //white
const Color primaryColor2 = Color(0xFFF6E6CE); //flesh
const Color primaryColor3 = Color(0xFF101118); //black
const Color secondaryColor = Color(0xFF213AD8); //blue
const Color secondaryColor2 = Color(0xFF14213D); //blue
const Color accentColor1 = Color(0xFFECA82E); //dandelion
const Color accentColor2 = Color(0xFF96006C); //red violet
const Color accentColor3 = Color(0xFF0290FF); //gcash
const Color circleColor1 = Color(0xFFFFCC78); //circleColor1
Color circleColor2 = const Color(0xFF111111).withOpacity(0.75); //circleColor2
Color lineColor1 = const Color(0xFFC8C7CC).withOpacity(0.75); //circleColor2

List<Color> homeGradient = [
  const Color(0xFFF0D29D),
  const Color(0xFFFBCF7F),
  Colors.white,
];

List<Color> fourthBlockGradient = [
  const Color(0xFF3040A9),
  const Color(0xFF001283),
];

List<Color> hoverGradient = [
  accentColor1,
  const Color(0xFFFF8C4C),
  const Color(0xFFFF6060),
  Colors.white,
];

//Splash screen
const String appTitle = "TingBits";
const String appMotto = "Borrow money simply.";

//Mobile Settings Screen
const String accInfoText = 'Your Profile';
const String emailText = 'Email';
const String currentPassText = 'Current Password';
const String currentPassErrMsg = 'Please input current password.';
const String newPassText = 'Confirm/New Password';
const String newPassErrMsg = 'Please confirm password or input new password.';
const String reauthSnackbar = 'Saving Changes. Please reauthenticate.';
const String passWeakSnackbar = 'Password is too weak.';
const String passUpdateSnackbar = 'Password update unsuccessful.';
const String btnTextSave = 'Save Changes';

const String contract =
    'Privacy Policy\n\n\n\n\nTerms & Conditions\n\n\n\n\nRequirements\n';

const String confirm =
    'I confirm that i lorem\nispuhsmm koceankweqm,mq\n\nI confirm that I have been\nscreened for conditions that\nmay merit deferment\nor chuchucuhcuchu';

const String payment =
    'Please send your payment to the Gcash account:\n\nLENDING COMPANY\n09XXXXXXXXX\n\nVerification or processing may take 1-3 business days.\n\nOnce payment is verified, it will then be reflected to your account.';

//Home
const String noUserSnackbar = 'No user found for that email.';
const String wrongPassSnackbar = 'Wrong password provided for that user.';
const String loginErrorSnackbar = 'Login Error';
const String registerErrorSnackbar = 'Registration Error';
const String loginText = 'Log In';
const String registerText = 'Register Now';
const String forgotPassText = 'Forgot Password';
const String usedEmailText = 'Email already in use';
const String invalidEmailText = 'Invalid email';

//Main
const String mainErrorText = 'Encountered Error!';

//notifications
List<Widget> notifs = [
  Container(
    height: 170,
    width: double.maxFinite,
    padding: const EdgeInsets.all(20.0),
    decoration: const BoxDecoration(
      color: Colors.white,
      border: Border(
        bottom: BorderSide(
          width: 1.0,
          color: Color(0xFFDADADA),
        ),
      ),
    ),
    child: Column(
      children: [
        Row(
          children: const [
            Icon(Icons.receipt),
            SizedBox(
              width: 15,
            ),
            Text('Loan Approved', style: textStyle5),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 35.0),
          child: Text(
            'We???re happy to inform you that we have approved your loan request. Please check your GCash within 1-2 days. Thank you.',
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 4,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    ),
  ),
  Container(
    height: 170,
    width: double.maxFinite,
    padding: const EdgeInsets.all(20.0),
    decoration: const BoxDecoration(
      color: Colors.white,
      border: Border(
        bottom: BorderSide(
          width: 1.0,
          color: Color(0xFFDADADA),
        ),
      ),
    ),
    child: Column(
      children: [
        Row(
          children: const [
            Icon(Icons.receipt),
            SizedBox(
              width: 15,
            ),
            Text('Loan Request', style: textStyle5),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 35.0),
          child: Text(
            'We???d like to inform you that we will review your loan request. During this time, we will process and check the details for your request. To avoid any inconvenience, schedule ',
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 4,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    ),
  ),
];
