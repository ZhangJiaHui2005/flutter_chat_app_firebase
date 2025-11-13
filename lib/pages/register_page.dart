import 'package:chat_app_firebase/components/my_button.dart';
import 'package:chat_app_firebase/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            SizedBox(height: 50),

            Text(
              "Welcome back! You've been missed",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  MyTextfield(hintText: "Email", controller: _emailController),

                  SizedBox(height: 10),

                  MyTextfield(
                    hintText: "Password",
                    obscureText: true,
                    controller: _passwordController,
                  ),

                  SizedBox(height: 20),

                  MyTextfield(
                    hintText: "Confirm Password",
                    obscureText: true,
                    controller: _confirmPasswordController,
                  ),

                  SizedBox(height: 20),

                  MyButton(
                    title: "Login",
                    onTap: () {
                      print("Register tapped");
                    },
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      GestureDetector(
                        onTap: onTap,
                        child: Text(
                          " Sign in",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
