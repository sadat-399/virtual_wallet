import 'package:flutter/material.dart';
import 'package:virtual_wallet/components/onboarding_component.dart';
import 'package:virtual_wallet/login/login_registration_option_view.dart';
import 'package:virtual_wallet/onboarding/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      home: const LoginRegistrationOptionView(),
      // const OnboardingComponent(
      //     svgAssetsPath: '/collaboration.svg',
      //     title: 'Your Finances in One Place',
      //     description:
      //         'Get the big picture on all your money. Connect your bank, track cash, or import data.'),
    );
  }
}
