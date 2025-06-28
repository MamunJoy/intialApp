import 'package:floting_project/Views/home_page.dart';
import 'package:floting_project/Views/show_dailouge_bar.dart';
import 'package:flutter/material.dart';

import 'Views/show_dailouge_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showDailouge(),
    );
  }
}

