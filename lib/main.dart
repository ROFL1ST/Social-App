// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:social_media_app/pages/home/home.dart';
import 'package:social_media_app/pages/auth/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MySocialApp",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
