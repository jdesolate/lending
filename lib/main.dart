import 'package:flutter/material.dart';
import 'package:lending/screens/onboarding.dart';
// import 'package:lending/screens/home.dart';
import 'package:lending/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // runApp(const MaterialApp(home: HomeScreen()));
  runApp(MaterialApp(
      // home: const Onboarding(),
      home: const SplashScreen(),
      theme: ThemeData(fontFamily: 'Inter'),
      debugShowCheckedModeBanner: false));
}
