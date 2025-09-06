import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/transaction_model.dart';
import 'package:responsive_dash_board_app/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022 ",
      amount: r"$20,129",
      iswithdraw: true,
    ),
    TransactionModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$2,000",
      iswithdraw: false,
    ),
    TransactionModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$20,129",
      iswithdraw: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder:
          (context, index) =>
              TransactionHistoryItem(transactionModel: items[index]),
    );
  }
}
