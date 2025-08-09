import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/user_info_model.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<UserInfoModel> userList = [
      UserInfoModel(
        title: "Lekan Okeowo",
        subtitle: "Madraniadi20@gmail",
        image: Assets.imagesUserInfo,
      ),
      UserInfoModel(
        title: "Lekan Okeowo",
        subtitle: "Josh Nunito@gmail.com",
        image: Assets.imagesAvatar2,
      ),
      UserInfoModel(
        title: "Lekan Okeowo",
        subtitle: "demo@gmail.com",
        image: Assets.imagesAvatar1,
      ),
    ];

    /// you do not have to add fixed height to row
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            userList
                .map(
                  (userInfoModel) => IntrinsicWidth(
                    child: UserInfoListTile(userInfoModel: userInfoModel),
                  ),
                )
                .toList(),
      ),
    );
  }
}


/*

you have to give the list view a fixed height.
 SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: userList[index]),
          );
        },
      ),
    )



*/