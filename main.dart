import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/edit_profile_page.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/loading_page.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/Pages/profile_page.dart';
import 'package:flutter_application_1/Pages/recipe_page.dart';
import 'package:flutter_application_1/Pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFDF9),
        
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFD5D69),
          primary: const Color(0xFFFD5D69),
        ),

        fontFamily: 'Poppins', 
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(fontFamily: 'League Spartan', fontWeight: FontWeight.w400),
        ),
        
        useMaterial3: true,
      ),
      
      home: const LoadingScreen()
    );
  }
}