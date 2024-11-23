import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran_app/widgets/quran_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();
  Future<void> playAudio(int index) async {
    await player.setUrl(
        'https://cdn.islamic.network/quran/audio-surah/128/ar.alafasy/$index.mp3');
    await player.play();
  }

  Future<void> stopAudio() async {
    await player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Quran App'),
        ),
        body: Center(
          child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(114, (index) {
                return QuranItem(
                    index: index + 1,
                    playAudio: playAudio,
                    stopAudio: stopAudio);
              })),
        ));
  }
}
