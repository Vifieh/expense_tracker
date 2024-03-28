import 'package:expense_tracker/widgets/expense_item.dart';
import 'package:flutter/material.dart';

import '../../models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenseList,
  });

  final List<Expense> expenseList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenseList.length,
        itemBuilder: (context, index) => Dismissible(
              key: ValueKey(),
              child: ExpenseItem(expense: expenseList[index]),
            ));
  }
}
