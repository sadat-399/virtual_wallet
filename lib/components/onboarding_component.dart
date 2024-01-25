import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingComponent extends StatelessWidget {
  final String svgAssetsPath;
  final String title;
  final String description;

  const OnboardingComponent({
    super.key,
    required this.svgAssetsPath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {},
                child: const Text('Skip'),
              ),
            ),
          ),
          const SizedBox(height: 55),
          SvgPicture.asset(
            'assets/$svgAssetsPath',
            width: 140,
            height: 140,
          ),
          const SizedBox(height: 25),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 25),
          Text(
            description,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
