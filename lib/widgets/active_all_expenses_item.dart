import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';
import 'package:responsive_dash_board_app/widgets/all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xff4EB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
        color: Color(0xff4EB7F2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageIcon: allExpensesItemModel.image,
            imageColor: Colors.white,
            imageBackground: Colors.white.withValues(alpha: 0.1),
          ),
          SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16(
              context,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: Color(0xffFAFAFA)),
          ),
          SizedBox(height: 16),
          Text(
            allExpensesItemModel.amount,
            style: AppStyles.styleSemiBold24(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
