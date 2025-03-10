import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({super.key, required this.expense});

  final ExpenseModel expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 185, 226, 247),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title, style: Theme.of(context).textTheme.titleLarge),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  expense.amount.toStringAsFixed(2),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.account_tree_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text(expense.date.toString()),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
