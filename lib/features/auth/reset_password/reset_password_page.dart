import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common/widget/app_elevated_button.dart';
import '../../../core/common/widget/auth_form_field.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/injection_container.dart';
import '../../../core/utils/validator.dart';
import '../../../generated/l10n.dart';
import 'cubit/reset_password_cubit.dart';

@RoutePage()
class ResetPasswordPage extends StatelessWidget implements AutoRouteWrapper {
  const ResetPasswordPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ResetPasswordCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ResetPasswordCubit>();
    return Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
        body: Form(
          key: cubit.formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AuthFormField(
                  controller: cubit.email,
                  hintText: S.of(context).email,
                  validator: (value) => Validators.validateEmail(
                    value,
                    context,
                  ),
                ),
                const SizedBox(height: 20),
                BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
                  builder: (context, state) {
                    return AppElevatedButton(
                      foregroundColor: AppColors.primary,
                      backgroundColor: AppColors.white,
                      child: Text(S.of(context).reset_password),
                      onPressed: () {
                        if (cubit.formKey.currentState?.validate() == true) {
                          cubit.resetPassword(email: cubit.email.text);
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
