import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/item_details_model.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';

class IcomeDetailsItem extends StatelessWidget {
  const IcomeDetailsItem({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
