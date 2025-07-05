import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board_app/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            title: "Lekan Okeowo",
            subtitle: "demo@gmail.com",
            image: Assets.imagesAvatar1,
          ),
          SizedBox(height: 8),
          DrawerItemsListView(),
        ],
      ),
    );
  }
}
