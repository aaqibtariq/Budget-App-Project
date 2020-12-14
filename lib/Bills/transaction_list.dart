import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_budget_app/Saving/transaction.dart';

class TransactionList extends StatelessWidget {
  // using Transaction.dart
  final List<Transaction> transactions;
  final Function deleteTrans;

  // constructor
  TransactionList(this.transactions, this.deleteTrans);

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
    // will excuete this if list of empty and it will show picture and text
        ? LayoutBuilder(
            builder: (ctx, constraints) {
              return Column(
                children: <Widget>[
                  Text(
                    'No Transactions added yet!',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/Saving.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            },
          )
        : ListView.builder(
      // will excute this if transaction is added
            itemBuilder: (ctx, index) {
              return Card(
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$${transactions[index].amount.toStringAsFixed(2)}', // display box with amount
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            transactions[index].title, // display titile
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            DateFormat.yMMMd().format(transactions[index].date), // display date
                            style: TextStyle(color: Colors.grey),
                          ),
                          RaisedButton(
                            elevation: 10,
                            color: Colors.red,
                            onPressed: () => deleteTrans(transactions[index].id),
                            child: Text( // display delete button
                              'Delete',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: transactions.length, // will go till the length of the list
          );
  }
}
