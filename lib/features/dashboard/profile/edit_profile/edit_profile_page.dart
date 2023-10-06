import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/widget/app_elevated_button.dart';
import '../../../../core/common/widget/app_form_field.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/vibe_theme_Extension.dart';
import '../../../../core/utils/injection_container.dart';
import '../../../../generated/l10n.dart';
import '../../photo_picker/cubit/photo_picker_cubit.dart';
import '../../user_data/user_data_cubit.dart';
import '../../photo_picker/photo_picker.dart';
import 'cubit/edit_profile_cubit.dart';

@RoutePage()
class EditProfilePage extends StatefulWidget implements AutoRouteWrapper {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EditProfileCubit>(create: (_) => sl<EditProfileCubit>()),
        BlocProvider<PhotoPickerCubit>(create: (_) => sl<PhotoPickerCubit>()),
        BlocProvider<UserDataCubit>(create: (_) => sl<UserDataCubit>()),
      ],
      child: this,
    );
  }
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDataCubit, UserDataState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: Theme.of(context).iconTheme,
            title: Text(
              S.of(context).profile,
              style: Theme.of(context)
                  .xTextTheme
                  .h2
                  .copyWith(color: AppColors.grey),
            ),
          ),
          body: SafeArea(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    AppFormField(
                      labelText: state.firstName,
                      controller: _firstNameController,
                    ),
                    const SizedBox(height: 16),
                    AppFormField(
                      labelText: state.lastName,
                      controller: _lastNameController,
                    ),
                    const SizedBox(height: 16),
                    AppFormField(
                      labelText: S.of(context).bio.isNotEmpty
                          ? S.of(context).bio
                          : state.bio,
                      controller: _bioController,
                    ),
                    const SizedBox(height: 16),
                    BlocBuilder<PhotoPickerCubit, PhotoPickerState>(
                      builder: (context, state) {
                        return PhotoPicker(
                          onTap: (state) => context
                              .read<PhotoPickerCubit>()
                              .showPicker(context, state),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    AppElevatedButton(
                      foregroundColor: AppColors.white,
                      backgroundColor: AppColors.primary,
                      child: Text(S.of(context).save),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
