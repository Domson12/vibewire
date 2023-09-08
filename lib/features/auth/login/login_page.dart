import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common/widget/app_elevated_button.dart';
import '../../../core/common/widget/auth_form_field.dart';
import '../../../core/common/widget/auth_logo.dart';
import '../../../core/theme/vibe_theme_Extension.dart';
import '../../../core/common/widget/auth_navigation_row.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/injection_container.dart';
import '../../../core/utils/validator.dart';
import '../../../generated/l10n.dart';
import '../cubit/auth_cubit.dart';

@RoutePage()
class LoginPage extends StatelessWidget implements AutoRouteWrapper {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();

  final TextEditingController _password = TextEditingController();

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
      body: Center(
        child: SafeArea(
          child: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const AuthLogo(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        AuthFormField(
                          controller: _email,
                          hintText: S.of(context).email,
                          validator: (value) => Validators.validateEmail(
                            value,
                            context,
                          ),
                        ),
                        const SizedBox(height: 20),
                        AuthFormField(
                          controller: _password,
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
                          onTap: () {
                            //TODO: Reset password
                          },
                        ),
                        const SizedBox(height: 40),
                        SizedBox(
                          width: double.maxFinite,
                          child: AppElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() == true) {
                                context.read<AuthCubit>().signIn(
                                      email: _email.text,
                                      password: _password.text,
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
                            foregroundColor: AppColors.black,
                            backgroundColor: AppColors.white,
                            child: state.isLoading
                                ? const CircularProgressIndicator()
                                : Text(
                                    S.of(context).login,
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
