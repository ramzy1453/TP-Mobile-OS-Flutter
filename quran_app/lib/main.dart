import 'package:flutter/material.dart';
import 'package:quran_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

// Stateful widget to handle audio playback.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // Builds the app's UI.
    return MaterialApp(home: const MyHomePage());
  }
}
