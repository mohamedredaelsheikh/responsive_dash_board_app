import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/drawer_item_model.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/drawer_item.dart';
import 'package:responsive_dash_board_app/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.imagesMytransaction),
    DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imagesWalletAccount),
    DrawerItemModel(title: "My Investments", image: Assets.imagesMyInvestments),
  ];
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

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: drawerItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: DrawerItem(drawerItemModel: drawerItems[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
