// ignore_for_file: file_names

import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/add_new_expense.dart';
import 'package:expense_tracker/widgets/expense_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<ExpenseModel> _expenseList = [
    ExpenseModel(
        title: "Pizza",
        amount: 1000.00,
        date: DateTime.now(),
        category: Category.food),
    ExpenseModel(
        title: "wifi Bill",
        amount: 2500.00,
        date: DateTime.now(),
        category: Category.bills),
    ExpenseModel(
        title: "class Fees",
        amount: 1500,
        date: DateTime.now(),
        category: Category.education),
  ];

  //add function overlay

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return AddNewExpense();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Expense Master",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color.fromARGB(255, 43, 100, 199),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 35,
            ),
          )
        ],
      ),
      body: Column(
        children: [ExpenseList(expenseList: _expenseList)],
      ),
    );
  }
}
