import 'dart:io';

import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails(
      {super.key, required this.imagePath, required this.deleteImage});

  final String imagePath;
  final Function deleteImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          imagePath,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.file(
            File(imagePath),
          ),
          ElevatedButton(
              onPressed: () {
                deleteImage(imagePath);
                Navigator.pop(context);
              },
              child: const Text("Delete Image"))
        ]),
      ),
    );
  }
}
