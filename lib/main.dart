import 'package:flutter/material.dart';

import 'schooldasboard/school_UI/school_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Main theme color
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFE8812B), background: Color(0XFFEFDDCE), onSecondary: Color(0xFFE8812B)),
        useMaterial3: true,
      ),
      home: SchoolDashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
