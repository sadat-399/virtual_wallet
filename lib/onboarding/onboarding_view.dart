import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height / 4.5,
          ),
          const Icon(
            Icons.wallet,
            size: 120,
            color: Colors.greenAccent,
          ),
          const SizedBox(height: 10),
          const Text(
            'Hello!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Welcom to Wallet by Sadat, The best way to get financial freedom.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            child: const Text(
              'Learn how',
              style: TextStyle(
                color: Colors.white,
                // backgroundColor: Colors.blueAccent,
              ),
            ),
          ),
          // SizedBox(height: height * 0.9),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {},
                child: const Text('Skip the show'),
              ),
            ),
          ),
          const SizedBox(height: 19),
        ],
      ),
    );
  }
}


// account_balance_wallet