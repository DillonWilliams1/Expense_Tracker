import 'package:uuid/uuid.dart';

final uuid = const Uuid().v4();

enum Category { food, education, travel, leasure, bills }

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
}
