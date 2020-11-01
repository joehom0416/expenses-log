import 'package:expense_log/models/transactions.dart';
import 'package:expense_log/widgets/fab_bottom_app_bar.dart';
import 'package:expense_log/widgets/transaction_item.dart';
import 'package:expense_log/widgets/two_columns_panel.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import '../constant.dart';

class TransactionScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Expenses',
          style: appBarTitleTextStyle,
        ),
      ),
      body: Column(
        children: [
          TwoColumnsPanel(
            leftTitle:'Total',
            leftContent: 'RM 399.20',
            leftOnTap: (){},
            rightTitle: 'Budgets',
            rightContent: 'RM 1000',
            rightOnTap: (){},
            ),
          // monthly navigation
          Container(
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.arrow_left),
                  ),
                  Text(
                    'OCT 2020',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.arrow_right),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GroupedListView(
              elements: Transactions().transactions,
              groupHeaderBuilder: (Transaction data) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      DateFormat('dd MMM').format(data.date),
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              groupBy: (Transaction element) => element.date,
              itemBuilder: (context, Transaction data) {
                return TransactionItem(data);
              },
              itemComparator: (Transaction item1, Transaction item2) =>
                  item1.date.compareTo(item2.date),
              useStickyGroupSeparators: true,
              order: GroupedListOrder.DESC,
            ),
          ),
        ],
      ),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: '',
        color: Colors.grey,
        backgroundColor: Colors.white,
        selectedColor: primaryColor,
        notchedShape: CircularNotchedRectangle(),
        items: [
          FABBottomAppBarItem(
              iconData: Icons.account_balance_wallet, text: 'List'),
          FABBottomAppBarItem(iconData: Icons.access_time, text: 'Planning'),
          FABBottomAppBarItem(iconData: Icons.assessment, text: 'Report'),
          FABBottomAppBarItem(iconData: Icons.more_horiz, text: 'Settings'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        elevation: 3.0,
      ),
    );
  }

}
