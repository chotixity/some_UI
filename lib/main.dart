import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: GoogleFonts.manrope(
            color: const Color(0xFFE5EDEC),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          titleMedium: GoogleFonts.manrope(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          bodyMedium: GoogleFonts.manrope(
            color: const Color(0xFF1A3B44),
            fontSize: 18,
            fontWeight: FontWeight.w700,
            //height: 0.07,
          ),
          bodySmall: GoogleFonts.manrope(
            color: Colors.white,
            fontSize: 18,
            //fontFamily: 'Manrope',
            fontWeight: FontWeight.w500,
            //height: 0.11,
            letterSpacing: 0.20,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
