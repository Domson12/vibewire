import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/repository_impl/post_repository_impl.dart';

part 'add_main_state.dart';

part 'add_main_cubit.freezed.dart';

@injectable
class AddMainCubit extends Cubit<AddMainState> {
  AddMainCubit(this._postRepositoryImpl) : super(const AddMainState());

  final PostRepositoryImpl _postRepositoryImpl;

  final formKey = GlobalKey<FormState>();
  final descriptionController = TextEditingController();
  final titleController = TextEditingController();

  Future<void> addMainPost(
    String file,
    String uid,
    String firstName,
    String lastName,
    String? profileImage,
    String title,
    String description,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      _postRepositoryImpl.addPost(
        file,
        uid,
        firstName,
        lastName,
        profileImage,
        title,
        description,
      );
      emit(state.copyWith(isLoading: false, isError: false));
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: true,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
