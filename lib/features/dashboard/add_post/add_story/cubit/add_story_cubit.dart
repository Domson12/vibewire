import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/repository_impl/post_repository_impl.dart';

part 'add_story_state.dart';

part 'add_story_cubit.freezed.dart';

@injectable
class AddStoryCubit extends Cubit<AddStoryState> {
  AddStoryCubit(this._postRepositoryImpl) : super(const AddStoryState());

  final PostRepositoryImpl _postRepositoryImpl;
  final formKey = GlobalKey<FormState>();
  late final titleController = TextEditingController();

  Future<void> addStory(
    String file,
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
    String title,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      _postRepositoryImpl.addStory(
        file,
        uid,
        firstName,
        lastName,
        profileImage,
        title,
      );
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
