import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginRegistrationOptionView extends StatelessWidget {
  const LoginRegistrationOptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 171, 88),
              Color.fromARGB(255, 0, 85, 44),
              Color.fromARGB(255, 0, 38, 20),
              Color.fromARGB(255, 0, 23, 11),
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              SvgPicture.asset(
                'assets/security.svg',
                width: 200,
              ),
              const SizedBox(height: 100),
              const Text(
                'Sign up below to create a secure account.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.white,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.apple,
                      color: Colors.black,
                    ),
                    Text(
                      'Sign in with Apple',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
