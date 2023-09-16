import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../../../domain/model/stories_model.dart';
import '../../../../../domain/repository_impl/auth_facade_impl.dart';

part 'add_story_state.dart';

part 'add_story_cubit.freezed.dart';

@injectable
class AddStoryCubit extends Cubit<AddStoryState> {
  AddStoryCubit(this._firestore, this._authFacadeImpl)
      : super(const AddStoryState());

  final FirebaseFirestore _firestore;
  final AuthFacadeImpl _authFacadeImpl;

  Future<void> imagePicker(ImageSource source) async {
    final imageFile = await ImagePicker().pickImage(source: source);
    if (imageFile != null) {
      final String fileBytes = await imageFile.readAsBytes() as String;

      emit(state.copyWith(imageBytes: fileBytes));
    }
  }

  Future<void> addStory(
    Uint8List file,
    String uid,
    String name,
    String lastName,
    String profileImage,
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
        name: name,
        lastName: lastName,
        likes: [],
        profileImage: profileImage,
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
