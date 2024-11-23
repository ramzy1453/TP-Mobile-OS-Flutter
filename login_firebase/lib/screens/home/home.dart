import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_firebase/services/auth_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 36),
            if (user != null) ...[
              const Text("Hello", style: TextStyle(fontSize: 24)),
              Text(
                user!.email!.toString(),
                style: const TextStyle(fontSize: 36),
              )
            ],
            if (user == null) ...[
              const Text("You are not logged in"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text('Login'),
              )
            ],
            ElevatedButton(
                onPressed: () async {
                  await AuthService().logout();
                  if(context.mounted) {
                    Navigator.pushReplacementNamed(context, '/login');
                  }
                },
                child: const Text("Logout"))
          ],
        ),
      ),
    );
  }
}
