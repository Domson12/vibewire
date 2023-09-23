import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/injection_container.dart';

import '../../../generated/l10n.dart';
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
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return ProfileInfo(
            profileImage: state.profileImage,
            firstName: state.firstName,
            lastName: state.lastName,
            bio: state.bio,
            postsNumber: state.postLen.toString(),
            followersNumber: state.followers.toString(),
            likesNumber: state.likes.toString(),
            buttonText: 'log Out',
            onPressed: () {
              context.read<ProfileCubit>().signOut();
            },
            onTapIcon: () {
              //TODO: profile edit page
            },
          );
        },
      ),
    );
  }
}
