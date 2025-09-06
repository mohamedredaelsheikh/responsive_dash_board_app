import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/drawer_item_model.dart';
import 'package:responsive_dash_board_app/models/user_info_model.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board_app/widgets/inactive_drawer_item.dart';
import 'package:responsive_dash_board_app/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                title: "Lekan Okeowo",
                subtitle: "demo@gmail.com",
                image: Assets.imagesUserInfo,
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.imagesSettingIcon,
                    title: "Setting system",
                  ),
                ),

                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.imagesLogout,
                    title: "Logout account",
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
