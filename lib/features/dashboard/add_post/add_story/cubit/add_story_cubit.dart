import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../../../domain/model/stories_model.dart';
import '../../../../../domain/repository_impl/auth_facade_impl.dart';
import '../../../../../generated/l10n.dart';

part 'add_story_state.dart';

part 'add_story_cubit.freezed.dart';

@injectable
class AddStoryCubit extends Cubit<AddStoryState> {
  AddStoryCubit(this._firestore, this._authFacadeImpl)
      : super(const AddStoryState());

  final FirebaseFirestore _firestore;
  final AuthFacadeImpl _authFacadeImpl;

  Future<void> _imagePicker(ImageSource source) async {
    emit(state.copyWith(isLoading: true));
    final imageFile = await ImagePicker().pickImage(source: source);
    if (imageFile != null) {
      final fileBytes = await imageFile.readAsBytes();

      emit(state.copyWith(
        imageBytes: fileBytes,
        isPhotoSelected: true,
        isLoading: false,
      ));
    }
  }

  void showPicker(BuildContext context) {
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
                  _imagePicker(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: Text(S.of(context).camera),
                onTap: () {
                  _imagePicker(ImageSource.camera);
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

  Future<void> addStory(
    String file,
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      String photoUrl = await _authFacadeImpl.addPhotoToStorage(
        'stories',
        file,
        true,
      );

      String storyId = const Uuid().v1();

      final storiesModel = StoriesModel(
        uid: uid,
        storiesId: storyId,
        firstName: firstName,
        lastName: lastName,
        likes: [],
        storiesImage: photoUrl,
        datePublished: DateTime.now(),
      );

      await _firestore
          .collection('stories')
          .doc(storyId)
          .set(storiesModel.toJson());

      emit(state.copyWith(isLoading: false, isSuccess: true));
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          isFailure: true,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
