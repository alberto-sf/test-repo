import 'package:demoapp/src/welcome_screen/widgets/logo.dart';
import 'package:demoapp/src/welcome_screen/widgets/scrollable_box.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned.fill(
            child: Image(
              image: AssetImage(
                'assets/background.png',
              ),
              fit: BoxFit.cover,
            ),
          ),

          // Content
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: SafeArea(
              child: Column(
                spacing: 30,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Logo(),
                  ScrollableBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
