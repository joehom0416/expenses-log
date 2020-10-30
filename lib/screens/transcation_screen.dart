import 'package:expense_log/models/transactions.dart';
import 'package:expense_log/widgets/FABBottomAppBar.dart';
import 'package:expense_log/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.short_text),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          'Expenses Log',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Row(
                children: [
                  summaryHeader(context, "Total", "RM 309.23"),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Container(
                      width: 1,
                      height: 40,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  summaryHeader(context, "Budgets", "RM 1000"),
                ],
              ),
            ),
            // monthly navigation
            Material(
              color: Colors.blue,            
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
              child: ListView.builder(
                  itemCount: Transactions().transactions.length,
                  itemBuilder: (context, i) {
                    return TransactionItem(Transactions().transactions[i]);
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: '',
        color: Colors.grey,
        backgroundColor: Colors.white,
        selectedColor: Colors.blue,
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

  Expanded summaryHeader(BuildContext context, String title, String value) {
    return Expanded(
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                // setState(() {
                //   isDatePopupOpen = true;
                // });
              },
              child: Padding(
                padding: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.8)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      value,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
