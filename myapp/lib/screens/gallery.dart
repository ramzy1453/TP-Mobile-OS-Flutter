import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/screens/image_details.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  final List<String> _images = [];

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    debugPrint("Image path: ${returnedImage?.path}");

    setState(() {
      if (returnedImage != null) {
        _images.add(returnedImage.path);
      }
    });
  }

  void deleteImage(imagePath) {
    setState(() {
      _images.remove(imagePath);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text(
            'Gallery',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _pickImageFromGallery,
                  child: const Text('Add Image'),
                ),
                const SizedBox(
                  height: 12,
                ),
                Expanded(
                    child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  children: List.generate(_images.length, (index) {
                    return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageDetails(
                                  imagePath: _images[index],
                                  deleteImage: deleteImage),
                            ),
                          );
                        },
                        child: Image.file(
                          File(_images[index]),
                          width: 150,
                        ));
                  }),
                )),
              ],
            )));
  }
}
