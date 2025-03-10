import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_tile.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenseList});

  final List<ExpenseModel> expenseList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenseList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ExpenseTile(expense: expenseList[index]),
          );
        },
      ),
    );
  }
}
