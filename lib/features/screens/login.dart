import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  String message = '';

  void login() {
    setState(() {

      if (emailController.text == 'admin@test.com' &&
          passwordController.text == '123456') {

        message = 'Login Success';

      } else {

        message = 'Login Failed';
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Login Screen'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            TextField(
              key: const ValueKey('emailField'),
              controller: emailController,

              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              key: const ValueKey('passwordField'),
              controller: passwordController,
              obscureText: true,

              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              key: const ValueKey('loginButton'),
              onPressed: login,

              child: const Text('Login'),
            ),

            const SizedBox(height: 20),

            Text(
              message,
              key: const ValueKey('loginMessage'),

              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}