import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginRegistrationOptionView extends StatelessWidget {
  const LoginRegistrationOptionView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 200, 136),
              Color.fromARGB(255, 0, 150, 100),
              Color.fromARGB(255, 0, 82, 56),
              Color.fromARGB(255, 0, 45, 31),
              Color.fromARGB(255, 1, 12, 09),
              Color.fromARGB(255, 0, 0, 0),
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height / 4.5),
              SvgPicture.asset(
                'assets/security.svg',
                width: 200,
              ),
              SizedBox(height: height / 5.9),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 5.5),
                child: const Text(
                  'Sign up below to create a secure account.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: height / 30),
              SizedBox(
                width: width / 1.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.facebook_sharp,
                        color: Colors.black,
                        size: 50,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.g_mobiledata_rounded,
                        color: Colors.black,
                        size: 50,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.email_rounded,
                        color: Colors.black,
                        size: 45,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: height / 30),
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
                      size: 17,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Sign in with Apple',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(color: Color.fromARGB(255, 150, 150, 150)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('LOG IN'),
                  )
                ],
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 18),
                    child: Text(
                      'By signing up or connecting with the services above you agree to our Terms of Service and acknowledge our Privacy Policy describing how we handle your personal data.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 150, 150, 150),
                      ),
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
