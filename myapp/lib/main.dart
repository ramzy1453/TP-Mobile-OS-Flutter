import 'package:flutter/material.dart';
import 'package:myapp/screens/gallery.dart';
import 'package:myapp/screens/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Gallery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => const Homepage(title: 'Image Gallery'),
        'second': (context) => const SecondScreen(
              title: "Sscreen",
            ),
        'gallery': (context) => const Gallery(),
      },
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key, required this.title});

  final String title;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double angle = 0;

  void rotate() {
    setState(() {
      angle += 1;
      if (angle >= 360) {
        angle = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'second');
              },
              child: const Text('Go to Second Screen'),
            ),
            const Text(
              "Images:",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 40,
            ),
            Transform.rotate(
              angle: angle,
              child: Image.asset(
                'images/IT.png',
                width: 150,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        onPressed: rotate,
        label: const Text(
          'Rotate',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        icon: const Icon(Icons.rotate_90_degrees_ccw,
            color: Colors.white, size: 25),
      ),
    );
  }
}
