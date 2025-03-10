import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final uuid = const Uuid().v4();
final formattedDate = DateFormat.yMd();

enum Category { food, education, travel, leasure, bills }

final CategoryIcons = {
  Category.food: Icons.fastfood,
  Category.education: Icons.school,
  Category.travel: Icons.flight,
  Category.leasure: Icons.sports_esports,
  Category.bills: Icons.money
};

class ExpenseModel {
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  final String id;

  ExpenseModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid;

  String get getformattedDate {
    return formattedDate.format(date);
  }
}
