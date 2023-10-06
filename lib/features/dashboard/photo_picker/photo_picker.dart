import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../add_post/widget/photo_card.dart';
import 'cubit/photo_picker_cubit.dart';

class PhotoPicker extends StatelessWidget {
  const PhotoPicker({
    super.key,
    required this.onTap,
    this.validator,
    this.isPhotoSelected = false,
    this.imageBytes,
    this.initialValue,
  });

  final void Function(FormFieldState)? onTap;
  final Uint8List? imageBytes;
  final bool isPhotoSelected;
  final dynamic initialValue;
  final FormFieldValidator<dynamic>? validator;

  @override
  Widget build(BuildContext context) {
    return FormField(
      validator: validator,
      initialValue: initialValue,
      builder: (FormFieldState<dynamic> field) {
        return Column(
          children: [
            BlocBuilder<PhotoPickerCubit, PhotoPickerState>(
              builder: (context, state) {
                if (state.imageBytes == null) {
                  return InkWell(
                    onTap: () {
                      onTap?.call(field);
                      field.didChange(state.imageBytes);
                    },
                    child: PhotoCard(
                      imageBytes: imageBytes,
                      isPhotoSelected: isPhotoSelected,
                    ),
                  );
                } else {
                  return PhotoCard(
                    imageBytes: state.imageBytes,
                    isPhotoSelected: state.isPhotoSelected,
                  );
                }
              },
            ),
            if (field.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  field.errorText?.toString() ?? '',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                ),
              ),
          ],
        );
      },
    );
  }
}
