import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board_app/widgets/all_expenses_items_list_view.dart';
import 'package:responsive_dash_board_app/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
