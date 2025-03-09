import 'package:expense_tracker/models/expense.dart';
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
          return Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(expenseList[index].title,
                      style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        expenseList[index].amount.toStringAsFixed(2),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Icon(Icons.account_tree_rounded),
                          SizedBox(
                            width: 10,
                          ),
                          Text(expenseList[index].date.toString()),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
