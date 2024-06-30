import 'package:flutter/material.dart';
import 'package:news_app/pages/home.dart';
import 'package:news_app/pages/landing_page.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const LandingPage(),
    routes: {
      'home': (context) => const Home(),
      'landing_page': (context) => const LandingPage(),
    },
  ));
}
