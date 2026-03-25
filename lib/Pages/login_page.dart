import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(height: 40),
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xFFFD5D69),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 60),
                
                _label("Email"),
                const SizedBox(height: 8),
                _input("example@example.com", false),
                
                const SizedBox(height: 20),
                
                _label("Password"),
                const SizedBox(height: 8),
                _input("●●●●●●●●", true),
                
                const SizedBox(height: 40),
                
                _btn("Log In", const Color(0xFFFFC5C8), const Color(0xFFEB878D)),
                const SizedBox(height: 20),
                
                const Text(
                  'or sign up with',
                  style: TextStyle(
                    color: Color(0xFF32201C),
                    fontSize: 13,
                    fontFamily: 'League Spartan',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                
                const SizedBox(height: 15),
                Image.asset(
                  'assets/images/googlelogo.png',
                  height: 30,
                  fit: BoxFit.contain,
                ),
                
                const SizedBox(height: 30),
                
                Text.rich(
                  TextSpan(
                    text: 'Don’t have an account? ',
                    style: const TextStyle(
                      color: Color(0xFF32201C),
                      fontSize: 13,
                      fontFamily: 'League Spartan',
                      fontWeight: FontWeight.w300,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: const TextStyle(
                          color: Color(0xFFFD5D69),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _label(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF32201C),
          fontSize: 15,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _input(String hint, bool hide) {
    return TextField(
      obscureText: hide,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: const Color(0xFF1C0F0D).withOpacity(0.45)),
        filled: true,
        fillColor: const Color(0xFFFFC5C8),
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _btn(String text, Color bg, Color txtCol) {
    return SizedBox(
      width: 207,
      height: 45,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bg,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: txtCol,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}