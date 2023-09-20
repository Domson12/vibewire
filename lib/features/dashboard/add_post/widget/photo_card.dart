import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({
    super.key,
    required this.imageBytes,
    required this.isPhotoSelected,
  });

  final Uint8List? imageBytes;
  final bool isPhotoSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        isPhotoSelected
            ? Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: MemoryImage(
                      imageBytes ?? File('').readAsBytesSync(),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.white,
                ),
              ),
      ],
    );
  }
}
