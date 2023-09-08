import 'package:flutter/material.dart';

import 'custom_search_bar.dart';

//custom app bar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.searchController,
    required this.profileImage,
    this.bottom,
  }) : super(key: key);

  final TextEditingController searchController;
  final PreferredSizeWidget? bottom;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      bottom: bottom,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: CustomSearchBar(controller: searchController),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey,
            foregroundImage: AssetImage(profileImage),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
