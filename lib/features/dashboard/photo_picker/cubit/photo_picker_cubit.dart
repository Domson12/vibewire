import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../generated/l10n.dart';

part 'photo_picker_state.dart';

part 'photo_picker_cubit.freezed.dart';

@injectable
class PhotoPickerCubit extends Cubit<PhotoPickerState> {
  PhotoPickerCubit() : super(const PhotoPickerState());

  Future<void> _imagePicker(ImageSource source, FormFieldState fieldState) async {
    emit(state.copyWith(isLoading: true));
    final imageFile = await ImagePicker().pickImage(source: source);
    if (imageFile != null) {
      final fileBytes = await imageFile.readAsBytes();
      fieldState.didChange(fileBytes);
      emit(state.copyWith(
        imageBytes: fileBytes,
        isPhotoSelected: true,
        isLoading: false,
      ));
    }
  }
  void showPicker(BuildContext context, FormFieldState fieldState) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: Text(S.of(context).gallery),
                onTap: () {
                  _imagePicker(ImageSource.gallery, fieldState);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: Text(S.of(context).camera),
                onTap: () {
                  _imagePicker(ImageSource.camera, fieldState);
                  Navigator.of(context).pop();
                  context.router.pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
