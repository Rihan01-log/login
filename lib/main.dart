import 'package:flutter/material.dart';
import 'package:login/login.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch:  Colors.red
      ),
      home:  Loginpage(),
    );
  }
}