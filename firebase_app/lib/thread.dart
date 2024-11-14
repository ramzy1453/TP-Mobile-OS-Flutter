import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// Declare _x as a global variable
int _x = 0;

// Define the function with a delay
Future<void> myFunction1() => Future.delayed(const Duration(seconds: 2), () {
      _x++;
      debugPrint('$_x');
    });

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Variable to store and display _x value
  String displayText = "Hello, World!";

  // Function to run myFunction1 and update the UI
  Future<void> _runMyFunction() async {
    await myFunction1(); // Call myFunction1
    setState(() {
      displayText = 'Value of x: $_x'; // Update display text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Thread Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(displayText, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _runMyFunction,
              child: const Text('Run Function'),
            ),
          ],
        ),
      ),
    );
  }
}
