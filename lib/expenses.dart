import 'package:expense_tracker_fa26/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_fa26/models/expense.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});
  
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

//expenses
class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Cheeseburger",
      amount: 11.99,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Fries",
      amount: 4.50,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Movie Ticket",
      amount: 12.00,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('Chart Here...'),
        Expanded(child: ExpensesList(expenses:_registeredExpenses)),
        ],
    ),
    );
  }
}