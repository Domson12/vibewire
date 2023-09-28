import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/navigation/app_router.dart';
import '../../../core/utils/injection_container.dart';

import '../../../generated/l10n.dart';
import '../user_data/user_data_cubit.dart';
import 'cubit/profile_cubit.dart';
import 'widget/profile_info.dart';

@RoutePage()
class ProfilePage extends StatelessWidget implements AutoRouteWrapper {
  const ProfilePage({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileCubit>(create: (_) => sl<ProfileCubit>()),
        BlocProvider<UserDataCubit>(create: (_) => sl<UserDataCubit>()),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(S.of(context).profile),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: BlocBuilder<UserDataCubit, UserDataState>(
        builder: (userContext, userState) {
          return BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return ProfileInfo(
                profileImage: userState.profileImage,
                firstName: userState.firstName,
                lastName: userState.lastName,
                bio: userState.bio,
                postsNumber: userState.postLen.toString(),
                followersNumber: userState.followers.toString(),
                likesNumber: userState.likes.toString(),
                buttonText: S.of(context).logout,
                onPressed: () {
                  context.read<ProfileCubit>().signOut();
                },
                onTapIcon: () {
                  context.router.push(const EditProfileRoute());
                },
              );
            },
          );
        },
      ),
    );
  }
}
