import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final int index;
  final Future<void> Function(int index) playAudio;
  final void Function() stopAudio;

  QuranItem({
    super.key,
    required this.index,
    required this.playAudio,
    required this.stopAudio,
  });

  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Surah $index'),
        subtitle: const Text('Click to listen surah'),
        onTap: () {
          if (isPlaying) {
            stopAudio();
            isPlaying = false;
          } else {
            playAudio(index);
            isPlaying = true;
          }
        },
      ),
    );
  }
}
