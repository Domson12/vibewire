import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/widget/app_elevated_button.dart';
import '../../../../core/common/widget/app_form_field.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/validator.dart';
import '../../../../generated/l10n.dart';
import '../../photo_picker/cubit/photo_picker_cubit.dart';
import '../../user_data/user_data_cubit.dart';
import '../../photo_picker/photo_picker.dart';
import 'cubit/add_story_cubit.dart';

@RoutePage()
class AddStoryPage extends StatelessWidget {
  const AddStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final storyCubit = context.read<AddStoryCubit>();
    final userDataCubit = context.read<UserDataCubit>();
    final photoCubit = context.read<PhotoPickerCubit>();
    return Scaffold(
      body: Form(
        key: storyCubit.formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppFormField(
                  labelText: S.of(context).title,
                  controller: storyCubit.titleController,
                  validator: (value) => Validators.validateName(value, context),
                ),
                const SizedBox(height: 20),
                BlocBuilder<PhotoPickerCubit, PhotoPickerState>(
                  builder: (context, state) {
                    return PhotoPicker(
                      validator: (value) =>
                          Validators.validateEmptyField(value, context),
                      onTap: (state) => photoCubit.showPicker(context, state),
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
                              if (storyCubit.formKey.currentState?.validate() ==
                                  true) {
                                final uid = userDataCubit.getUid();
                                context.read<AddStoryCubit>().addStory(
                                      state.imageBytes.toString(),
                                      uid,
                                      userState.firstName,
                                      userState.lastName,
                                      userState.profileImage,
                                      storyCubit.titleController.text,
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
