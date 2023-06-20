
import '../widgets/user_transaction.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text("Personal Expense"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(child: Text("chart")),
          UserTransaction(),
          ],
        ),
      ),
    );
  }
}
