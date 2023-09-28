import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/common/widget/app_elevated_button.dart';
import '../../../../core/common/widget/app_form_field.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/validator.dart';
import '../../../../generated/l10n.dart';
import '../../../auth/cubit/auth_cubit.dart';
import '../../image_picker/cubit/image_picker_cubit.dart';
import '../../user_data/user_data_cubit.dart';
import '../widget/photo_picker.dart';
import 'cubit/add_story_cubit.dart';

@RoutePage()
class AddStoryPage extends HookWidget {
  AddStoryPage({super.key});

  final _formKey = GlobalKey<FormState>();
  late final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppFormField(
                  labelText: S.of(context).title,
                  controller: _titleController,
                  validator: (value) => Validators.validateName(value, context),
                ),
                const SizedBox(height: 20),
                BlocBuilder<ImagePickerCubit, ImagePickerState>(
                  builder: (context, state) {
                    return PhotoPicker(
                      validator: (value) =>
                          Validators.validateEmptyField(value, context),
                      onTap: () {
                        context.read<ImagePickerCubit>().showPicker(context);
                      },
                      isPhotoSelected: state.isPhotoSelected,
                      imageBytes: state.imageBytes,
                    );
                  },
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.maxFinite,
                  child: BlocBuilder<UserDataCubit, UserDataState>(
                    builder: (userContext, userState) {
                      return BlocBuilder<AddStoryCubit, AddStoryState>(
                        builder: (context, state) {
                          return AppElevatedButton(
                            foregroundColor: AppColors.white,
                            backgroundColor: AppColors.primary,
                            child: Text(S.of(context).add_story),
                            onPressed: () {
                              if (_formKey.currentState?.validate() == true) {
                                final uid = context.read<AuthCubit>().getUuid();
                                context.read<AddStoryCubit>().addStory(
                                      state.imageBytes.toString(),
                                      uid,
                                      userState.firstName,
                                      userState.lastName,
                                      userState.profileImage,
                                      _titleController.text,
                                    );
                              }
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
