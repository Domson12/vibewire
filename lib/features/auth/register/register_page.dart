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
import '../cubit/auth_cubit.dart';
import '../../../core/common/widget/auth_logo.dart';
import '../../../core/common/widget/auth_navigation_row.dart';
import '../../../core/utils/injection_container.dart';
import '../../../generated/l10n.dart';

@RoutePage()
class RegisterPage extends StatelessWidget implements AutoRouteWrapper {
  RegisterPage({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _name = TextEditingController();

  final TextEditingController _lastName = TextEditingController();

  final TextEditingController _email = TextEditingController();

  final TextEditingController _password = TextEditingController();

  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return Form(
                  key: _formKey,
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
                            controller: _name,
                            hintText: S.of(context).name,
                            suffixIcon: const Icon(Ionicons.person),
                            validator: (value) {
                              return Validators.validateName(value, context);
                            },
                          ),
                          const SizedBox(height: 30),
                          AuthFormField(
                            controller: _lastName,
                            hintText: S.of(context).surname,
                            suffixIcon: const Icon(Ionicons.person),
                            validator: (value) =>
                                Validators.validateName(value, context),
                          ),
                          const SizedBox(height: 30),
                          AuthFormField(
                            controller: _email,
                            hintText: S.of(context).email,
                            suffixIcon: const Icon(Ionicons.mail),
                            validator: (value) =>
                                Validators.validateEmail(value, context),
                          ),
                          const SizedBox(height: 30),
                          AuthFormField(
                            controller: _password,
                            hintText: S.of(context).password,
                            obscureText: state.isPasswordVisible,
                            suffixIcon: IconButton(
                              onPressed: () => context
                                  .read<AuthCubit>()
                                  .togglePasswordVisibility(),
                              icon: state.isPasswordVisible
                                  ? const Icon(Ionicons.eye_off)
                                  : const Icon(Ionicons.eye),
                            ),
                            validator: (value) =>
                                Validators.validatePassword(value, context),
                          ),
                          const SizedBox(height: 30),
                          AuthFormField(
                            controller: _confirmPassword,
                            hintText: S.of(context).confirm_password,
                            obscureText: state.isConfirmPasswordVisible,
                            suffixIcon: IconButton(
                              onPressed: () {
                                context
                                    .read<AuthCubit>()
                                    .toggleConfirmPasswordVisibility();
                              },
                              icon: state.isConfirmPasswordVisible
                                  ? const Icon(Ionicons.eye_off)
                                  : const Icon(Ionicons.eye),
                            ),
                            validator: (value) =>
                                Validators.validatePassword(value, context),
                          ),
                          const SizedBox(height: 10),
                          AuthNavigationRow(
                            leftText: S.of(context).have_account,
                            rightText: S.of(context).login,
                            onTap: () => context.router.push(
                              LoginRoute(),
                            ),
                          ),
                          const SizedBox(height: 40),
                          SizedBox(
                            width: double.maxFinite,
                            child: AppElevatedButton(
                              foregroundColor: AppColors.black,
                              backgroundColor: AppColors.white,
                              onPressed: () {
                                if (_formKey.currentState?.validate() == true) {
                                  context.read<AuthCubit>().register(
                                        email: _email.text,
                                        password: _password.text,
                                        name: _name.text,
                                        lastName: _lastName.text,
                                      );
                                  if (state.showErrorMessage == true) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(state.errorMessage ?? ''),
                                      ),
                                    );
                                  }
                                }
                              },
                              child: state.isLoading
                                  ? const CircularProgressIndicator()
                                  : Text(
                                      S.of(context).register,
                                      style:
                                          Theme.of(context).xTextTheme.display0,
                                    ),
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
