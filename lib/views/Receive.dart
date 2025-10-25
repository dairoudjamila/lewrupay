import 'package:flutter/material.dart';
import 'package:lewrupay/config/palette.dart';
import 'package:lewrupay/firebase/cloud_firestorage.dart';
import 'package:lewrupay/firebase/firebase_auth.dart';
import 'package:lewrupay/models/tansaction_model.dart';
import 'package:lewrupay/views/Data.dart';
import 'package:get/get.dart';
import 'package:lewrupay/widgets/custom_button.dart';
import 'package:uuid/uuid.dart';

class Receive extends StatefulWidget {
  const Receive({super.key});

  @override
  State<Receive> createState() => _ReceiveState();
}

class _ReceiveState extends State<Receive> {
  String _selectedValue = "Orange Money";
  final List<String> _options = ['Orange Money', 'MTN Mobile Money'];

  var payersnumber = TextEditingController();
  var beneficiarynumber = TextEditingController();
  var number = TextEditingController();
  var amount = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Send / Receive")),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("payers phone number"),
                TextFormField(
                  controller: payersnumber,
                  keyboardType: TextInputType.number,
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
                    return null;
                  },
                ),
                SizedBox(height: 12),
                Text("beneficiary phone number"),
                TextFormField(
                  controller: beneficiarynumber,
                  keyboardType: TextInputType.number,
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
                    return null;
                  },
                ),

                SizedBox(height: 12),
                Text("Amount"),
                TextFormField(
                  controller: amount,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.attach_money),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter an amount',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter the amount";
                    }
                    return null;
                  },
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
                  text: 'Recharge now',
                  onPressed: () {
                    receive();
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

  var storage = CloudFirestorage();
  receive() {
    var transaction = TransactionModel(
      id: Uuid().v1(),
      numSender: payersnumber.text,
      numReceiver: beneficiarynumber.text,
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
        beneficiarynumber.clear();
        amount.clear();
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("succeed")));
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
