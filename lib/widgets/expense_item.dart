import 'package:expense_tracker_fa26/widgets/expenses_list.dart';
import 'package:expense_tracker_fa26/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  void _openAddExpenseOverlay() {
    showModalBottomSheet(context: context, builder: (ctx) => Text("My Modal"));
  }

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
      appBar: AppBar(
        title: Text("Expense Tracker"),
        actions: [
          IconButton(icon: Icon(Icons.add), onPressed: _openAddExpenseOverlay),
        ],
      ),
      body: Column(
        children: [
          Text("Chart Here..."),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}