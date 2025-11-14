import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/firebase/cloud_firestorage.dart';
import 'package:lewrupay/firebase/firebase_auth.dart';
import 'package:lewrupay/models/tansaction_model.dart';
import 'package:lewrupay/widgets/custom_button.dart';
import 'package:uuid/uuid.dart';

class Send extends StatefulWidget {
  const Send({super.key});

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
 
    var payersnumber=TextEditingController(); 
    var receivernumber=TextEditingController();
     var amount=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Send")),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Payers phone number'),
                TextFormField( 
                  controller: payersnumber,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_circle_outline_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 12),
                Text('Beneficiary phone number'),
                TextFormField(
                  controller: receivernumber,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 12),
                Text('Amount'),
                TextFormField(
                  controller: amount,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.attach_money),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter an amount',
                  ),
                ),
                const SizedBox(height: 25),
                CustomButton(text: 'Send', onPressed: () {
                  send();
                }, isPrimary: true),
              ],
            ),
          ),
        ),
      ),
      );
  }

 var storage = CloudFirestorage();
   send() {
    var transaction = TransactionModel(
      id: Uuid().v1(),
      numSender: payersnumber.text,
      numReceiver: receivernumber.text,
      amount: double.parse(amount.text),
      type: TransactionType.data,
      date: DateTime.now().toIso8601String(),
    );
    storage.saveTransaction(transaction: transaction,onError: () {
    ScaffoldMessenger.of(context,).showSnackBar(SnackBar(content:Text("error")));
    
      
    },onSucess: (){
      payersnumber.clear();
      receivernumber.clear();
      amount.clear();
      ScaffoldMessenger.of(context,).showSnackBar(SnackBar(content:Text("succeed")));
    
    });

  }
  dialogue() {
    showDialog(context: context, builder:(builder) {
      return Center(child: CircularProgressIndicator());
    });
  }

}
