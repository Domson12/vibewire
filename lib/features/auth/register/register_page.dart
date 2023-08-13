import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibewire/core/common/widget/app_elevated_button.dart';
import 'package:vibewire/core/common/widget/auth_form_field.dart';
import 'package:vibewire/core/theme/app_colors.dart';
import 'package:ionicons/ionicons.dart';
import 'package:vibewire/core/theme/vibe_theme_Extension.dart';
import '../../../core/common/widget/auth_logo.dart';
import '../../../core/utils/injection_container.dart';
import '../../../generated/l10n.dart';
import 'cubit/register_cubit.dart';

@RoutePage()
class RegisterPage extends StatefulWidget with AutoRouteWrapper {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RegisterCubit>(),
      child: this,
    );
  }
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _name = TextEditingController();
  final TextEditingController _surname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              return Form(
                key: _formKey,
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
                          controller: _name,
                          hintText: S.of(context).name,
                          suffixIcon: const Icon(Ionicons.person),
                        ),
                        const SizedBox(height: 20),
                        AuthFormField(
                          controller: _surname,
                          hintText: S.of(context).surname,
                          suffixIcon: const Icon(Ionicons.person),
                        ),
                        const SizedBox(height: 20),
                        AuthFormField(
                          controller: _email,
                          hintText: 'Email',
                          suffixIcon: const Icon(Ionicons.mail),
                        ),
                        const SizedBox(height: 20),
                        AuthFormField(
                          controller: _password,
                          hintText: S.of(context).password,
                          obscureText: state.isPasswordVisible,
                          suffixIcon: IconButton(
                            onPressed: () {
                              context
                                  .read<RegisterCubit>()
                                  .togglePasswordVisibility();
                            },
                            icon: state.isPasswordVisible
                                ? const Icon(Ionicons.eye_off)
                                : const Icon(Ionicons.eye),
                          ),
                        ),
                        const SizedBox(height: 20),
                        AuthFormField(
                          controller: _confirmPassword,
                          hintText: S.of(context).confirm_password,
                          obscureText: state.isConfirmPasswordVisible,
                          suffixIcon: IconButton(
                            onPressed: () {
                              context
                                  .read<RegisterCubit>()
                                  .toggleConfirmPasswordVisibility();
                            },
                            icon: state.isConfirmPasswordVisible
                                ? const Icon(Ionicons.eye_off)
                                : const Icon(Ionicons.eye),
                          ),
                        ),
                        const SizedBox(height: 40),
                        SizedBox(
                          width: double.maxFinite,
                          child: AppElevatedButton(
                            foregroundColor: AppColors.blue,
                            backgroundColor: AppColors.white,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                //TODO: Register
                              }
                            },
                            child: state.isSubmitting
                                ? const CircularProgressIndicator()
                                : Text(
                                    S.of(context).register,
                                    style:
                                        Theme.of(context).xTextTheme.display0,
                                  ),
                          ),
                        ),
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
