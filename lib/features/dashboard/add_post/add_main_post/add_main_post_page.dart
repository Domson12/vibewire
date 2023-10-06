import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/widget/app_elevated_button.dart';
import '../../../../core/common/widget/app_form_field.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/injection_container.dart';
import '../../../../core/utils/validator.dart';
import '../../../../generated/l10n.dart';
import '../../photo_picker/cubit/photo_picker_cubit.dart';
import '../../user_data/user_data_cubit.dart';
import '../../photo_picker/photo_picker.dart';
import 'cubit/add_main_cubit.dart';

@RoutePage()
class AddMainPostPage extends StatelessWidget implements AutoRouteWrapper {
  const AddMainPostPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<AddMainCubit>()),
        BlocProvider(create: (_) => sl<PhotoPickerCubit>()),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mainCubit = context.read<AddMainCubit>();
    final userDataCubit = context.read<UserDataCubit>();
    final photoCubit = context.read<PhotoPickerCubit>();
    return Scaffold(
      body: Form(
        key: mainCubit.formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppFormField(
                  labelText: S.of(context).title,
                  controller: mainCubit.titleController,
                  validator: (value) => Validators.validateName(value, context),
                ),
                const SizedBox(height: 20),
                AppFormField(
                  labelText: S.of(context).description,
                  controller: mainCubit.descriptionController,
                  validator: (value) => Validators.validateName(value, context),
                ),
                const SizedBox(height: 20),
                BlocBuilder<PhotoPickerCubit, PhotoPickerState>(
                  builder: (context, state) {
                    return PhotoPicker(
                      validator: (value) => Validators.validateEmptyField(
                        value,
                        context,
                      ),
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
                      return BlocBuilder<AddMainCubit, AddMainState>(
                        builder: (context, state) {
                          return AppElevatedButton(
                            foregroundColor: AppColors.white,
                            backgroundColor: AppColors.primary,
                            child: Text(S.of(context).add_post),
                            onPressed: () {
                              if (mainCubit.formKey.currentState?.validate() ==
                                  true) {
                                final uid = userDataCubit.getUid();
                                mainCubit.addMainPost(
                                  state.imageBytes.toString(),
                                  uid,
                                  userState.firstName,
                                  userState.lastName,
                                  userState.profileImage,
                                  mainCubit.titleController.text,
                                  mainCubit.descriptionController.text,
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
