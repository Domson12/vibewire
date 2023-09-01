import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common/widget/app_elevated_button.dart';
import '../../../core/common/widget/auth_social_row.dart';
import '../../../core/navigation/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/vibe_theme_Extension.dart';
import '../../../core/utils/injection_container.dart';
import '../../../generated/l10n.dart';
import '../../cubit/auth/auth_cubit.dart';
import 'widget/main_image_grid.dart';

@RoutePage()
class AuthMainPage extends StatelessWidget implements AutoRouteWrapper {
  const AuthMainPage({super.key});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const MainImageGrid(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).meet_new_friend,
                    style: Theme.of(context).xTextTheme.h1.copyWith(
                          color: AppColors.white,
                          fontSize: 28,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.of(context).meet_new_people,
                    style: Theme.of(context).xTextTheme.h2.copyWith(
                          color: AppColors.white,
                          fontSize: 18,
                        ),
                  ),
                  const SizedBox(height: 24),
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return AuthSocialRow(
                        text: S.of(context).login,
                        onTapFacebook: () {
                          context.read<AuthCubit>().facebookSignIn();
                        },
                        onTapGoogle: () {
                          context.read<AuthCubit>().googleSignIn();
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.maxFinite,
                    child: AppElevatedButton(
                      backgroundColor: AppColors.white,
                      foregroundColor: AppColors.primary,
                      child: Text(
                        S.of(context).register,
                        style: Theme.of(context)
                            .xTextTheme
                            .h2
                            .copyWith(color: AppColors.primary),
                      ),
                      onPressed: () {
                        context.router.push(RegisterRoute());
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.maxFinite,
                    child: AppElevatedButton(
                      backgroundColor: AppColors.white,
                      foregroundColor: AppColors.primary,
                      child: Text(
                        S.of(context).login,
                        style: Theme.of(context)
                            .xTextTheme
                            .h2
                            .copyWith(color: AppColors.primary),
                      ),
                      onPressed: () {
                        context.router.push(LoginRoute());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
