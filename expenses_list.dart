import 'package:expense_app/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_app/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      //itemBuilder: (ctx, index) => Text(expenses[index].title),
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
    );
  }
}
