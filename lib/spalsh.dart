import 'package:flutter/material.dart';
import 'package:login/homescreen.dart';
import 'package:login/login.dart';
import 'package:login/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    checkUserLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assests/login.jpg',
          height: 250,
        ),
      ),
    );
  }

  Future<void> goLoginPage() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => const Loginpage()),
    );
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedprefs = await SharedPreferences.getInstance();
    final _userLoggedIn = _sharedprefs.getBool(SVAE_KEY_NAME);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      goLoginPage();
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Homescreen(),
        ),
      );
    }
  }
}
