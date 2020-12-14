
import 'package:flutter/material.dart';
import 'package:my_budget_app/welcome_screen.dart';
import 'Budget/budget.dart';
import 'Expense/expense.dart';
import 'Income/income.dart';

import 'Receipt/receipt.dart';
import 'Saving/save.dart';

import 'Bills/bill.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Subscription/subscription.dart';
import 'Widgets/IconContent.dart';
import 'Widgets/cart_page.dart';
import 'chat_bot/chat_bot.dart';
import 'package:firebase_auth/firebase_auth.dart';

const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);

class HomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Budget App'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Income'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Income();
                  }),
                );

                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Expense'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Expense();
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Bill'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Bill();
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Subscription'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Subscription();
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Receipt'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Receipt();
                  }),
                );
              },
            ),


            ListTile(
              title: Text('Saving'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Save();
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Budget'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Budget();
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Chat bot'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ChatScreen();
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Sign Out'),
              onTap: () {
                _auth.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WelcomeScreen();
                  }),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Budget App'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Expanded(
            //   child: Column(),
            // ),
            Expanded(
              child: Row(
                children: <Widget>[
                  buildExpanded(
                      name: 'Income',
                      shape: FontAwesomeIcons.arrowUp,
                      colorss: Colors.green,
                      button: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Income();

                          }),
                        );
                      }),
                  buildExpanded(
                      name: 'Expense',
                      shape: FontAwesomeIcons.arrowDown,
                      colorss: Colors.red,
                      button: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Expense();
                          }),
                        );
                      }),
                ],
              ),
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildExpanded(
                      name: 'Bill',
                      shape: FontAwesomeIcons.moneyBill,
                      colorss: Colors.red,
                      button: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Bill();
                          }),
                        );
                      }),
                  buildExpanded(
                      name: 'Subscription',
                      shape: FontAwesomeIcons.reply,
                      colorss: Colors.red,
                      button: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Subscription();
                          }),
                        );
                      }),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  buildExpanded(
                      name: 'Receipt',
                      shape: FontAwesomeIcons.receipt,
                      colorss: Colors.blue,
                      button: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Receipt();
                          }),
                        );
                      }),
                  buildExpanded(
                      name: 'Budget',
                      shape: FontAwesomeIcons.save,
                      colorss: Colors.green,
                      button: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Budget();
                          }),
                        );
                      }
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  buildExpanded(
                      name: 'Saving',
                      shape: FontAwesomeIcons.wallet,
                      colorss: Colors.green,
                      button: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Save();
                          }),
                        );
                      }),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded buildExpanded(
      {String name, IconData shape, Color colorss, Function button}) {
    return Expanded(
      child: cartPage(
        onPress: button,
        colorss: kActiveCardColor,
        cardChild: IconContent(
          myIcon: shape,
          myText: name,
          myColor: colorss,
        ),
      ),
    );
  }
}
