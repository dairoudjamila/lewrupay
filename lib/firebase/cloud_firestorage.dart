import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lewrupay/models/tansaction_model.dart';
import 'package:lewrupay/models/user_model.dart';

class CloudFirestorage {
  var storage = FirebaseFirestore.instance;

  saveUser({
    required UserModel user,
    required String uid,
    required void Function() onSucess,
    required void Function() onError,
  }) {
    storage
        .collection("users")
        .doc(uid)
        .set({
          'idUser': uid,
          'email': user.email,
          'nomPrenom': user.nomPrenom,
          'dateNaiss': user.dateNaiss,
        })
        .then((value) {
          onSucess();
        })
        .catchError((error) {
          onError();
        });
  }

  saveTransaction({required TransactionModel transaction}) {
    storage
        .collection("transactions")
        .add(transaction.toMap())
        .then((value) {
          print("Transaction added");
        })
        .catchError((error) {
          print("Failed to add transaction: $error");
        });
  }
}
