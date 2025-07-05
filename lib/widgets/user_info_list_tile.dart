import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title, subtitle, image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(subtitle, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
