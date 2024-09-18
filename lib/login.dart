import 'package:flutter/material.dart';
import 'package:login/homescreen.dart';
import 'package:login/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _usenameController = TextEditingController();

  final _passwordController = TextEditingController();
  String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            'LOGIN PAGE ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.2,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _usenameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Username",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  check(context);
                },
                icon: const Icon(Icons.home),
                label: const Text('login'),
              )
            ],
            
          ),
        ),
      ),
    );
  }

  void check(BuildContext ctx)async {
    final username = _usenameController.text;
    final password = _passwordController.text;
    if (username ==  password) {
      
      final _sharedprefs=await SharedPreferences.getInstance();
     await _sharedprefs.setBool(SVAE_KEY_NAME, true);
      Navigator.push(
        ctx,
        MaterialPageRoute(
          builder: (context) => const Homescreen(),
        ),
      );
    } else {
      setState(() {
        errorMessage = "Invalid username or password";
      });

      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(10),
          content: Text(errorMessage),
        ),
      );
    }
  }
}
