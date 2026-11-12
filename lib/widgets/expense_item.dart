import 'package:expense_tracker_fa26/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expense.title),
              Row(children: [
              const SizedBox(height:4),
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  const Icon(Icons.alarm),
                  const SizedBox(width:8),
                  Text(expense.date.toString())
                ],
              )
            ],)
          ],
        ),
      ),
    );
  }
}