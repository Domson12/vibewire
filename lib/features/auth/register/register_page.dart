import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import '../../../core/common/widget/app_elevated_button.dart';
import '../../../core/common/widget/auth_form_field.dart';
import '../../../core/navigation/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/vibe_theme_Extension.dart';
import '../../../core/utils/validator.dart';
import '../../../core/common/widget/auth_logo.dart';
import '../../../core/common/widget/auth_navigation_row.dart';
import '../../../core/utils/injection_container.dart';
import '../../../generated/l10n.dart';
import 'cubit/register_cubit.dart';

@RoutePage()
class RegisterPage extends StatelessWidget implements AutoRouteWrapper {
  const RegisterPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RegisterCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              return Form(
                key: cubit.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const AuthLogo(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        AuthFormField(
                          controller: cubit.firstName,
                          hintText: S.of(context).name,
                          suffixIcon: const Icon(Ionicons.person),
                          validator: (value) => Validators.validateName(
                            value,
                            context,
                          ),
                        ),
                        const SizedBox(height: 30),
                        AuthFormField(
                          controller: cubit.lastName,
                          hintText: S.of(context).surname,
                          suffixIcon: const Icon(Ionicons.person),
                          validator: (value) => Validators.validateName(
                            value,
                            context,
                          ),
                        ),
                        const SizedBox(height: 30),
                        AuthFormField(
                          controller: cubit.email,
                          hintText: S.of(context).email,
                          suffixIcon: const Icon(Ionicons.mail),
                          validator: (value) => Validators.validateEmail(
                            value,
                            context,
                          ),
                        ),
                        const SizedBox(height: 30),
                        AuthFormField(
                          controller: cubit.password,
                          hintText: S.of(context).password,
                          obscureText: state.isPasswordNotVisible,
                          suffixIcon: IconButton(
                            onPressed: () => cubit.togglePasswordVisibility(),
                            icon: state.isPasswordNotVisible
                                ? const Icon(Ionicons.eye_off)
                                : const Icon(Ionicons.eye),
                          ),
                          validator: (value) => Validators.validatePassword(
                            value,
                            context,
                          ),
                        ),
                        const SizedBox(height: 30),
                        AuthFormField(
                          controller: cubit.confirmPassword,
                          hintText: S.of(context).confirm_password,
                          obscureText: state.isConfirmPasswordNotVisible,
                          suffixIcon: IconButton(
                            onPressed: () =>
                                cubit.toggleConfirmPasswordVisibility(),
                            icon: state.isConfirmPasswordNotVisible
                                ? const Icon(Ionicons.eye_off)
                                : const Icon(Ionicons.eye),
                          ),
                          validator: (value) => Validators.validatePassword(
                            value,
                            context,
                          ),
                        ),
                        const SizedBox(height: 10),
                        AuthNavigationRow(
                          leftText: S.of(context).have_account,
                          rightText: S.of(context).login,
                          onTap: () => context.router.push(const LoginRoute()),
                        ),
                        const SizedBox(height: 40),
                        SizedBox(
                          width: double.maxFinite,
                          child: BlocConsumer<RegisterCubit, RegisterState>(
                            listener: (context, state) {
                              if (state.isError == true) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(state.errorMessage!)),
                                );
                              }
                            },
                            builder: (context, state) {
                              return AppElevatedButton(
                                foregroundColor: AppColors.primary,
                                backgroundColor: AppColors.white,
                                onPressed: () {
                                  if (cubit.formKey.currentState?.validate() ==
                                      true) {
                                    context.read<RegisterCubit>().register(
                                          email: cubit.email.text,
                                          password: cubit.password.text,
                                          firstName: cubit.firstName.text,
                                          lastName: cubit.lastName.text,
                                        );
                                  }
                                },
                                child: state.isLoading
                                    ? const CircularProgressIndicator()
                                    : Text(
                                        S.of(context).register,
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
