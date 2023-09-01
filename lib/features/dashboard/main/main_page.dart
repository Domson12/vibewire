import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../core/utils/injection_container.dart';
import '../../../generated/l10n.dart';
import '../../auth/cubit/auth_cubit.dart';

@RoutePage()
class MainPage extends StatelessWidget implements AutoRouteWrapper {
  const MainPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.rgbBackground,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<AuthCubit>().logout();
                },
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : Text(S.of(context).logout),
              ),
            );
          },
        ),
      ),
    );
  }
}
