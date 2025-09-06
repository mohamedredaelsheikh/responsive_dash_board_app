import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';
import 'package:responsive_dash_board_app/widgets/range_option.dart';

class AllHeader extends StatelessWidget {
  const AllHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: AppStyles.styleSemiBold20(context)),
        Expanded(child: SizedBox()),
        RangeOptions(),
      ],
    );
  }
}
