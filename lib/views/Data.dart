import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lewrupay/config/palette.dart';
import 'package:lewrupay/firebase/cloud_firestorage.dart';
import 'package:lewrupay/firebase/firebase_auth.dart';
import 'package:lewrupay/models/tansaction_model.dart';
import 'package:lewrupay/widgets/custom_button.dart';
import 'package:uuid/uuid.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  String _selectedValue = "Orange Money";
  final List<String> _options = ['Orange Money', 'MTN Mobile Money'];

  var payersnumber = TextEditingController();
  var receivernumber = TextEditingController();

  var formKey = GlobalKey<FormState>();

  var amount = TextEditingController();
  var storage = CloudFirestorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("payers number"),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: payersnumber,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_circle_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter a number',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter the phone number";
                    } else if (value.length < 9 || value.length > 9) {
                      return "Enter the valide phone number";
                    }
                    return "";
                  },
                ),
                SizedBox(height: 12),
                Text("receiver number"),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: receivernumber,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_circle_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 12),
                Text("Data amount"),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: amount,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter amount',
                  ),
                ),
                SizedBox(height: 12),
                Text('Payment Method'),
                DropdownButtonFormField<String>(
                  value: _selectedValue,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.arrow_drop_down_circle),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Palette.primary,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Palette.primary,
                        width: 2.0,
                      ),
                    ),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedValue = newValue!;
                    });
                  },
                  items:
                      _options.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                ),

                const SizedBox(height: 25),
                CustomButton(
                  text: 'Activate now',
                  onPressed: () {
                    data();
                  },
                  isPrimary: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  data() {
    var transaction = TransactionModel(
      id: Uuid().v1(),
      numSender: payersnumber.text,
      numReceiver: receivernumber.text,
      amount: double.parse(amount.text),
      type: TransactionType.data,
      date: DateTime.now().toIso8601String(),
    );
    storage.saveTransaction(
      transaction: transaction,
      onError: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("error")));
      },
      onSucess: () {
        payersnumber.clear();
        receivernumber.clear();
        amount.clear();
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("activation succeed")));
      },
    );
  }

  dialogue() {
    showDialog(
      context: context,
      builder: (builder) {
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
