import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board_app/widgets/active_all_expenses_item.dart';
import 'package:responsive_dash_board_app/widgets/inactive_all_expenses_item.dart';

class AllExpensesItem  extends StatelessWidget{
  const AllExpensesItem({super.key, required this.allExpensesItemModel, required this.isSelected});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
   return isSelected ? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
    :   InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
