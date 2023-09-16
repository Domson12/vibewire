import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/common/widget/app_elevated_button.dart';
import '../../../../core/common/widget/app_form_field.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/injection_container.dart';
import '../../../../core/utils/validator.dart';
import '../../../../generated/l10n.dart';
import '../../../auth/cubit/auth_cubit.dart';
import 'cubit/add_story_cubit.dart';

@RoutePage()
class AddStoryPage extends HookWidget implements AutoRouteWrapper {
  AddStoryPage({super.key});

  final _formKey = GlobalKey<FormState>();
  late final _descriptionController = TextEditingController();
  late final _titleController = TextEditingController();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(create: (context) => sl<AuthCubit>()),
        BlocProvider<AddStoryCubit>(create: (context) => sl<AddStoryCubit>()),
      ],
      child: this,
    );
  }

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
                AppFormField(
                  labelText: S.of(context).description,
                  controller: _descriptionController,
                  validator: (value) => Validators.validateName(value, context),
                ),
                const SizedBox(height: 20),

                //TODO: Image Picker

                const SizedBox(height: 40),
                SizedBox(
                  width: double.maxFinite,
                  child: AppElevatedButton(
                    foregroundColor: AppColors.white,
                    backgroundColor: AppColors.primary,
                    child: Text(S.of(context).add_story),
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        final uid = context.read<AuthCubit>().getUuid();
                        // context
                        //     .read<AddStoryCubit>()
                        //     .addStory(file, uid, name, lastName, profileImage);
                      }
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
