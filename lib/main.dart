import 'package:flutter/material.dart';
import 'package:login/spalsh.dart';

const SVAE_KEY_NAME='UserLoggedIn';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const Splash(),
    );
  }
}
