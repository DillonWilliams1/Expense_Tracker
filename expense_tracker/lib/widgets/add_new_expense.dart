import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class AddNewExpense extends StatefulWidget {
  const AddNewExpense({super.key});

  @override
  State<AddNewExpense> createState() => _AddNewExpenseState();
}

class _AddNewExpenseState extends State<AddNewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  Category selectedCategory = Category.food;

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _amountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //add title text field
        TextField(
          controller: _titleController,
          decoration: InputDecoration(
            hintText: "Add new expense title",
            label: Text("Title"),
          ),
          keyboardType: TextInputType.text,
          maxLength: 50,
        ),
        //add amount text field
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _amountController,
                decoration: InputDecoration(
                  hintText: "add amount",
                  label: Text("Amount"),
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            //date
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("2025/12/12"),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.calendar_today),
                  )
                ],
              ),
            ),
          ],
        ),
        //add category dropdown
        Row(
          children: [
            DropdownButton(
              value: selectedCategory,
              items: Category.values
                  .map(
                    (category) => DropdownMenuItem(
                      value: category,
                      child: Text(category.name),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value!;
                });
              },
            )
          ],
        )
      ],
    );
  }
}
