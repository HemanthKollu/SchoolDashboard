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
      home: SchoolDashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
