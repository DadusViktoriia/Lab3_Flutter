import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFFFD5D69),
          ),
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            color: Color(0xFFFD5D69),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 20),
              
              const CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage('assets/images/icon1.png'),
              ),
              const SizedBox(height: 8),
              const Text(
                'Edit Photo',
                style: TextStyle(
                  color: Color(0xFFFD5D69), 
                  fontSize: 12,
                  fontFamily: 'Poppins',
                ),
              ),
              
              const SizedBox(height: 30),

              _label("Name"),
              const SizedBox(height: 8),
              _input("Dianne Russell"),

              const SizedBox(height: 20),

              _label("Username"),
              const SizedBox(height: 8),
              _input("dianne_r"),

              const SizedBox(height: 20),

              _label("Presentation"),
              const SizedBox(height: 8),
              _input("My passion is cooking and sharing new recipes with the world.", lines: 4),

              const SizedBox(height: 40),

              SizedBox(
                width: 152,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFD5D69),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20, 
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
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

  Widget _input(String hint, {int lines = 1}) {
    return TextField(
      maxLines: lines,
      style: const TextStyle(fontSize: 15, color: Color(0xFF32201C)),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: const Color(0xFF1C0F0D).withOpacity(0.45),
          fontSize: 14,
        ),
        filled: true,
        fillColor: const Color(0xFFFFC5C8),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}