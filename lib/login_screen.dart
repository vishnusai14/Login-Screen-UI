import 'package:flutter/material.dart';
import 'package:login_screen/utils/pallete.dart';
import 'package:login_screen/widgets/sign_button.dart';
import 'package:login_screen/widgets/text_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Image(
                image: AssetImage("assets/images/signin_balls.png"),
              ),
              const Text(
                "Sign In.",
                style: TextStyle(
                  color: Pallete.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SigninButton(
                assetPath: "assets/svg/g_logo.svg",
                label: "Continue with Google",
                pad: 28,
              ),
              const SizedBox(
                height: 20,
              ),
              const SigninButton(
                assetPath: "assets/svg/f_logo.svg",
                label: "Continue with Facebook",
                pad: 19,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Or'),
              const SizedBox(
                height: 15,
              ),
              TextInput(label: "Email"),
              const SizedBox(
                height: 20,
              ),
              TextInput(label: "Password"),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 250,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Pallete.gradient1,
                        Pallete.gradient2,
                        Pallete.gradient3
                      ],
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Pallete.whiteColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
