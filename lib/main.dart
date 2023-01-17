import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_1701/screens/kurs_erstellen_screen.dart';
import 'package:test_1701/screens/liste_kurse_screen.dart';

import 'controller/kurs_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  KursController _controller = Get.put(KursController());
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListeKurseScreen(),
    );
  }
}

// loading screen die app initialisiert und controller lädt (+ db requests usw.)
// dann start screen

