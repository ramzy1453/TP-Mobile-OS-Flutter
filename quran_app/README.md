# Rapport de l'application Flutter - Lecture Audio des Sourates du Quran

## Description

Cette application Flutter permet de lire les 114 sourates du Quran. Les fonctionnalités principales incluent :

- Affichage des 114 sourates dans une grille.
- Lecture audio d'une sourate sélectionnée lorsqu'on clique dessus.
- Arrêt de la lecture audio si on clique à nouveau sur la même sourate.

## Bibliothèques et Technologies Utilisées

- **Flutter** : Framework pour le développement mobile.
- **Dart** : Langage de programmation.
- **just_audio** : Bibliothèque pour la gestion et la lecture des fichiers audio depuis des URL.
- **GridView.count** : Pour afficher les sourates sous forme de grille.
- **Card** : Widget utilisé pour représenter chaque sourate sous forme de carte.

## Structure de l'Application

### Widgets Principaux

- **QuranItem (Card)** : Représente chaque sourate.

  - Contient le nom de la sourate.
  - Est interactif pour déclencher la lecture ou l'arrêt de l'audio.

- **GridView.count** :
  - Affiche les **QuranItem** dans une disposition en grille.
  - Paramètre `crossAxisCount` pour contrôler le nombre de colonnes.

### Fonctionnalités Clés

1. **Lecture Audio avec just_audio** :

   - Utilisation de `AudioPlayer` pour gérer les fichiers audio.
   - Chargement dynamique de l'audio depuis une URL fournie par une CDN.

2. **Gestion de l'Interaction** :
   - Lorsqu'une carte est cliquée, l'audio correspondant à la sourate est lu.
   - Si l'audio est déjà en lecture, il est arrêté.

### Code Exemple

#### Affichage des Sourates

```dart
GridView.count(
  crossAxisCount: 3, // Nombre de colonnes
  children: List.generate(114, (index) {
    return QuranItem(
      surahName: 'Sourate ${index + 1}',
      audioUrl: 'https://cdn.quran.com/audio/surah${index + 1}.mp3',
    );
  }),
);
```

#### Widget QuranItem

```dart
class QuranItem extends StatelessWidget {
  final String surahName;
  final String audioUrl;
  final AudioPlayer _audioPlayer = AudioPlayer();

  QuranItem({required this.surahName, required this.audioUrl});

  void _toggleAudio() async {
    if (_audioPlayer.playing) {
      await _audioPlayer.stop();
    } else {
      await _audioPlayer.setUrl(audioUrl);
      await _audioPlayer.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: _toggleAudio,
        child: Center(
          child: Text(surahName),
        ),
      ),
    );
  }
}
```

### Configuration Pubspec

```yaml
dependencies:
  flutter:
    sdk: flutter
  just_audio: ^0.9.14
```

## Résultats et Tests

- **Affichage** : Les 114 sourates sont affichées correctement sous forme de grille.
- **Interaction** : Le clic sur une sourate démarre ou arrête l'audio comme prévu.
- **Performance** : Pas de ralentissements détectés lors du streaming des fichiers audio depuis la CDN.

## Améliorations Futures

- Ajouter une barre de progression pour indiquer la lecture audio.
- Inclure une fonction de recherche pour trouver rapidement une sourate.
- Ajouter la gestion des erreurs si une URL de la CDN n’est pas accessible.

## Conclusion

L'application atteint son objectif principal de fournir une expérience simple et intuitive pour la lecture des sourates du Quran. Les utilisateurs peuvent facilement naviguer dans la liste et écouter les sourates audio en streaming. Avec quelques améliorations, l'application pourrait offrir encore plus de fonctionnalités pratiques et enrichir l'expérience utilisateur.
