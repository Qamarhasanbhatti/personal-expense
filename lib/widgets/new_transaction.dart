import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
final Function addTransaction;
NewTransaction(this.addTransaction);



  final titleController = TextEditingController();

  final amountController = TextEditingController();
  void submitTx(){
    addTransaction(titleController.text,double.parse(amountController.text));

  }

  @override
  Widget build(BuildContext context) {
    return    Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
onSubmitted:(_)=> submitTx(),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted:(_)=> submitTx(),
            ),
            ElevatedButton(
              onPressed:submitTx,
              child: Text(
                "Add Transactions ",
                style: TextStyle(color: Colors.purple),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
