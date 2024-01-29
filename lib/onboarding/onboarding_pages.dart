import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({super.key});

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Skip'),
                ),
              ),
            ),
            const Spacer(flex: 2),
            SizedBox(
              height: 500,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                itemCount: demoData.length,
                itemBuilder: (context, index) {
                  return OnboardContent(
                    illustration: demoData[index]['illustration'],
                    text: demoData[index]['text'],
                    title: demoData[index]['title'],
                  );
                },
              ),
            ),
            const Spacer(),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  demoData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: AnimatedDot(isActive: _selectedIndex == index),
                  ),
                )),
            const Spacer(flex: 2),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Get Started'.toUpperCase(),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class AnimatedDot extends StatelessWidget {
  const AnimatedDot({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 20 : 6,
      decoration: BoxDecoration(
        color: isActive
            ? Colors.greenAccent
            : const Color(0xFF868686).withOpacity(0.25),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.illustration,
    required this.title,
    required this.text,
  });

  final String illustration;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: SvgPicture.asset(
              illustration,
              width: MediaQuery.of(context).size.width - 130,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

// Demo data for our Onboarding screen
List<Map<String, dynamic>> demoData = [
  {
    "illustration": "assets/security.svg",
    "title": "Your Finances in one Place",
    "text":
        "Order from the best local restaurants \nwith easy, on-demand delivery.",
  },
  {
    "illustration": "assets/discount.svg",
    "title": "Track your Spending",
    "text":
        "Free delivery for new customers via Apple Pay\nand others payment methods.",
  },
  {
    "illustration": "assets/wallet.svg",
    "title": "Connect your bank",
    "text":
        "Order from the best local restaurants \nwith easy, on-demand delivery.",
  },
  {
    "illustration": "assets/wallet_account.svg",
    "title": "Budget your money",
    "text":
        "Free delivery for new customers via Apple Pay\nand others payment methods.",
  },
  {
    "illustration": "assets/bitcoin.svg",
    "title": "Follow your plan and dreams",
    "text":
        "Easily find your type of food craving and\nyou’ll get delivery in wide range.",
  },
  {
    "illustration": "assets/collaboration.svg",
    "title": "Your finances in One Place",
    "text":
        "Easily find your type of food craving and\nyou’ll get delivery in wide range.",
  },
];
