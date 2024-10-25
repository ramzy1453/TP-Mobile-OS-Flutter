import 'dart:io';

import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({super.key, required this.image});

  final File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Image Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
        child: Center(
          child: Image.file(
            image!,
          ),
        ),
      ),
    );
  }
}
