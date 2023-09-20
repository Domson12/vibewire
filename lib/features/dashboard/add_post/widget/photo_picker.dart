import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'photo_card.dart';

class PhotoPicker extends StatelessWidget {
  const PhotoPicker({
    super.key,
    required this.onTap,
    this.validator,
    this.isPhotoSelected = false,
    this.imageBytes,
  });

  final VoidCallback onTap;
  final Uint8List? imageBytes;
  final bool isPhotoSelected;
  final FormFieldValidator<dynamic>? validator;

  @override
  Widget build(BuildContext context) {
    return FormField(
      validator: validator,
      builder: (FormFieldState<dynamic> field) {
        return InkWell(
          onTap: onTap,
          child: PhotoCard(
            imageBytes: imageBytes,
            isPhotoSelected: isPhotoSelected,
          ),
        );
      },
    );
  }
}
