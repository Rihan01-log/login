import 'package:flutter/material.dart';

// ignore: camel_case_types
class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  final _usenameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Username",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.home),
                label: Text('login'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void check(BuildContext ctx) {
    final _username = _usenameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      // go to homepage
    } else {}
  }
}
