import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board_app/widgets/custom_background_container.dart';
import 'package:responsive_dash_board_app/widgets/icome_chart.dart';
import 'package:responsive_dash_board_app/widgets/income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          AllHeader(title: "Income"),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IcomeChart()),

                Expanded(child: IncomeDetails()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
