import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    const coral = Color(0xFFFD5D69);
    const brown = Color(0xFF32201C);
    const pink = Color(0xFFFFC5C8);

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: coral,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 30),
                
                _label("Full name"),
                const SizedBox(height: 8),
                _field("John Doe", false, pink),

                const SizedBox(height: 15),

                _label("Email"),
                const SizedBox(height: 8),
                _field("example@example.com", false, pink),

                const SizedBox(height: 15),

                _label("Password"),
                const SizedBox(height: 8),
                _field("●●●●●●●●", true, pink),

                const SizedBox(height: 15),

                _label("Confirm Password"),
                const SizedBox(height: 8),
                _field("●●●●●●●●", true, pink),

                const SizedBox(height: 30),

                const Text.rich(
                  TextSpan(
                    text: 'By continuing, you agree to \n',
                    style: TextStyle(color: brown, fontSize: 14),
                    children: [
                      TextSpan(text: 'Terms of Use', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' and '),
                      TextSpan(text: 'Privacy Policy.', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: 194,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: coral,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: Color(0xFFFFFCF8), fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text.rich(
                    TextSpan(
                      text: 'Already have an account?  ',
                      style: TextStyle(color: brown, fontSize: 13),
                      children: [
                        TextSpan(
                          text: 'Log In',
                          style: TextStyle(color: Color(0xFFEB878D), fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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

  Widget _field(String hint, bool secure, Color bg) {
    return TextField(
      obscureText: secure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: const Color(0xFF1C0F0D).withOpacity(0.45)),
        filled: true,
        fillColor: bg,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}