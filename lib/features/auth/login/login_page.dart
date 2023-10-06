import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

import '../../../core/common/widget/app_elevated_button.dart';
import '../../../core/common/widget/auth_form_field.dart';
import '../../../core/common/widget/auth_logo.dart';
import '../../../core/navigation/app_router.dart';
import '../../../core/theme/vibe_theme_Extension.dart';
import '../../../core/common/widget/auth_navigation_row.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/injection_container.dart';
import '../../../core/utils/validator.dart';
import '../../../generated/l10n.dart';
import 'cubit/login_cubit.dart';

@RoutePage()
class LoginPage extends StatelessWidget implements AutoRouteWrapper {
  const LoginPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<LoginCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Center(
        child: SafeArea(
          child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Form(
                  key: cubit.formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const AuthLogo(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        AuthFormField(
                          controller: cubit.email,
                          hintText: S.of(context).email,
                          validator: (value) => Validators.validateEmail(
                            value,
                            context,
                          ),
                        ),
                        const SizedBox(height: 20),
                        AuthFormField(
                          obscureText: state.isPasswordNotVisible,
                          suffixIcon: IconButton(
                            onPressed: () => cubit.togglePasswordVisibility(),
                            icon: state.isPasswordNotVisible
                                ? const Icon(Ionicons.eye_off)
                                : const Icon(Ionicons.eye),
                          ),
                          controller: cubit.password,
                          hintText: S.of(context).password,
                          validator: (value) => Validators.validatePassword(
                            value,
                            context,
                          ),
                        ),
                        const SizedBox(height: 20),
                        AuthNavigationRow(
                          leftText: S.of(context).forgot_password,
                          rightText: S.of(context).reset_password,
                          onTap: () => context.router.push(
                            const ResetPasswordRoute(),
                          ),
                        ),
                        const SizedBox(height: 40),
                        SizedBox(
                          width: double.maxFinite,
                          child: BlocConsumer<LoginCubit, LoginState>(
                            listener: (context, state) {
                              if (state.isError == true) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(state.errorMessage!),
                                  ),
                                );
                              }
                            },
                            builder: (context, state) {
                              return AppElevatedButton(
                                onPressed: () {
                                  if (cubit.formKey.currentState?.validate() ==
                                      true) {
                                    cubit.signIn(
                                      email: cubit.email.text,
                                      password: cubit.password.text,
                                    );
                                  }
                                },
                                foregroundColor: AppColors.primary,
                                backgroundColor: AppColors.white,
                                child: state.isLoading
                                    ? const CircularProgressIndicator()
                                    : Text(
                                        S.of(context).login,
                                        style: Theme.of(context)
                                            .xTextTheme
                                            .h2
                                            .copyWith(color: AppColors.primary),
                                      ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
