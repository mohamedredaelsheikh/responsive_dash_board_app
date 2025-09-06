import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board_app/widgets/income_section.dart';
import 'package:responsive_dash_board_app/widgets/my_card_and_my_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
          SizedBox(height: 24),

          MyCardAndMyTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
