import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibewire/core/common/widget/app_elevated_button.dart';
import 'package:vibewire/core/common/widget/auth_form_field.dart';
import 'package:vibewire/core/common/widget/auth_logo.dart';
import 'package:vibewire/core/theme/vibe_theme_Extension.dart';
import 'package:vibewire/features/auth/login/cubit/login_cubit.dart';

import '../../../core/common/widget/auth_navigation_row.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/injection_container.dart';
import '../../../generated/l10n.dart';

@RoutePage()
class LoginPage extends StatefulWidget with AutoRouteWrapper {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<LoginCubit>(),
      child: this,
    );
  }
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Center(
        child: SafeArea(
          child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      const AuthLogo(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      AuthFormField(
                        controller: _email,
                        hintText: S.of(context).email,
                      ),
                      const SizedBox(height: 20),
                      AuthFormField(
                        controller: _password,
                        hintText: S.of(context).password,
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
                          onPressed: () {},
                          foregroundColor: AppColors.black,
                          backgroundColor: AppColors.white,
                          child: state.isPasswordVisible
                              ? const CircularProgressIndicator()
                              : Text(
                                  S.of(context).login,
                                  style: Theme.of(context).xTextTheme.display0,
                                ),
                        ),
                      ),
                    ],
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
