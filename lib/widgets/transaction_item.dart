import 'package:expense_log/models/transactions.dart';
import 'package:flutter/material.dart';


class TransactionItem extends StatelessWidget {
  final Transaction transaction;

  const TransactionItem(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListTile(
        title: Text(
          transaction.title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold
          ),
        ),
        subtitle: Text(
          transaction.category,
          style: TextStyle(fontSize: 12),
        ),
        trailing: Text('RM ${transaction.value}',
        style: TextStyle(
          fontSize: 12,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}

