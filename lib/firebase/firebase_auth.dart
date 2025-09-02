import 'package:firebase_auth/firebase_auth.dart';
import 'package:lewrupay/firebase/cloud_firestorage.dart';
import 'package:lewrupay/models/user_model.dart';

class FirebaseAuthentification {
  FirebaseAuth auth = FirebaseAuth.instance;
  var storage = CloudFirestorage();

  login({
    required String email,
    required String password,
    required void Function() callBack,
    required void Function() onError,
  }) {
    auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
          callBack();
        })
        .onError((error, stackTrace) {
          onError();
        });
  }

  signin({required UserModel user, required String password}) {
    auth
        .createUserWithEmailAndPassword(email: user.email, password: password)
        .then((value) {
          storage.saveUser(
            user: user,
            uid: value.user!.uid,
            onSucess: () {
              print("User saved successfully");
            },
            onError: () {
              print("Error saving user");
            },
          );
        });
  }
}
