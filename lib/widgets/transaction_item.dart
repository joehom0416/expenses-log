import 'package:expense_log/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  const TransactionItem(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListTile(     
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade300,
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                DateFormat('dd').format(transaction.date),
                style: TextStyle(fontWeight: FontWeight.w800),),
                Text(
                DateFormat('MMM').format(transaction.date),
                style: TextStyle(fontWeight: FontWeight.w800),),
            ],
          )
        ),
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

