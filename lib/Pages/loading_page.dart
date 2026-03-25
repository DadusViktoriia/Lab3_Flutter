import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFD5D69),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 153,
              height: 153,
              padding: const EdgeInsets.all(0), 
              decoration: const BoxDecoration(
                color: Color(0xFFFFFCF8),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/logo.png', 
                fit: BoxFit.contain,
              ),
            ),
            
            const SizedBox(height: 15),

            const Text(
              'DishDash',
              style: TextStyle(
                color: Color(0xFFFFFCF8),
                fontSize: 60,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}