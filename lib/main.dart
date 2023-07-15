import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oak_appian/screens/login_screen.dart';
import 'package:oak_appian/screens/main_screen.dart';
import 'package:oak_appian/screens/phone_verification_screen.dart';
import 'package:oak_appian/screens/splash_screen1.dart';
import 'package:oak_appian/screens/step_way_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: const SplashScreen1());
  }
}
