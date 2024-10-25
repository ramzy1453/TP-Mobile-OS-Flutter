import 'package:flutter/material.dart';
import 'package:myapp/widgets/baridi_widget.dart';

class Baridi extends StatefulWidget {
  const Baridi({super.key});

  @override
  State<Baridi> createState() => _BaridiState();
}

class _BaridiState extends State<Baridi> {
  List<String> getPokemons() {
    return ['slm', 'cv', 'kho'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text(
          'Baridi',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Baridi Mob",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                for (var pok in getPokemons()) BaridiWidget(title: pok)
              ],
            )
          ],
        ),
      ),
    );
  }
}
