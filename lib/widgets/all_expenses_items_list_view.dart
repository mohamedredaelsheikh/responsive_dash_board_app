import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board_app/utils/app_images.dart';
import 'package:responsive_dash_board_app/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});

static List<AllExpensesItemModel> allExpensesItems = [
  AllExpensesItemModel(
                image: Assets.imagesBalance,
                title: "Balance",
                date: "April 2022",
                amount: r"$20,129"),
                AllExpensesItemModel(
                image: Assets.imagesIncome,
                title: "Income",
                date: "April 2022",
                amount: r"$20,129"),
                AllExpensesItemModel(
                image: Assets.imagesExpenses,
                title: "Expenses",
                date: "April 2022",
                amount: r"$20,129")
];
  @override
  Widget build(BuildContext context) {

    return Row(
      children: 
      allExpensesItems.asMap().entries.map((e) {
    int index = e.key;
    var item = e.value;

    if (index == 1) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: AllExpensesItem(allExpensesItemModel: item),
        ),
      );
    } else {
      return AllExpensesItem(allExpensesItemModel: item);
    }
  }).toList(), // <- correct placement


      //  allExpensesItems.map((e) => AllExpensesItem(allExpensesItemModel: e)).toList(),
      
    );
  }
}




/*
becouse i want to divide the all width to 3 
i want to make the child expanded 
 ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: allExpensesItems.length,
      itemBuilder: (context, index)
    {
      return AllExpensesItem(allExpensesItemModel: allExpensesItems[index]);
    } )
*/