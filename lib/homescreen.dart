import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: const Icon(Icons.exit_to_app))
        ],
        backgroundColor: const Color.fromARGB(255, 236, 43, 43),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME TO THE HOMEPAGE',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  signout(BuildContext ctx)async {
    final _sharedprefs=await SharedPreferences.getInstance();
    await _sharedprefs.clear();
     
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (ctx) => const Loginpage()),
      (route) => false,
    );
  }
}
