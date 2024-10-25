import 'package:flutter/material.dart';

class BaridiWidget extends StatelessWidget {
  const BaridiWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Column(
        children: [
          Image.asset("images/IT.png"),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
