import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/widget/app_elevated_button.dart';
import '../../../../core/common/widget/app_form_field.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/vibe_theme_Extension.dart';
import '../../../../core/utils/validator.dart';
import '../../../../generated/l10n.dart';

@RoutePage()
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: Theme.of(context).iconTheme,
        title: Text(
          S.of(context).profile,
          style: Theme.of(context).xTextTheme.h2.copyWith(
                color: AppColors.grey,
              ),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                AppFormField(
                  labelText: S.of(context).name,
                  controller: _firstNameController,
                  validator: (value) => Validators.validateName(value, context),
                ),
                const SizedBox(height: 16),
                AppFormField(
                  labelText: S.of(context).surname,
                  controller: _lastNameController,
                  validator: (value) => Validators.validateName(value, context),
                ),
                //TODO: Profile photo edit
                const SizedBox(height: 16),
                AppElevatedButton(
                  foregroundColor: AppColors.white,
                  backgroundColor: AppColors.primary,
                  child: Text(
                    S.of(context).save,
                    style: Theme.of(context).xTextTheme.h2,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
