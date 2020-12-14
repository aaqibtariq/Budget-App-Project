import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_budget_app/welcome_screen.dart';
import 'package:provider/provider.dart';

import 'Receipt/receipt_data.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ReceiptData(),
        ),

      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      ),
    );
  }
}



