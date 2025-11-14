

import 'package:firebase_auth/firebase_auth.dart';
import 'package:lewrupay/firebase/cloud_firestorage.dart';
import 'package:lewrupay/models/user_model.dart';
import 'package:lewrupay/views/forget_password.dart';

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

  signup({required UserModel user, required String password, required void Function() onError, required void Function() onSucess}) {
    auth
        .createUserWithEmailAndPassword(email: user.email, password: password)
        .then((value) {
          storage.saveUser(
            user: user,
            uid: value.user!.uid,
            onSucess: onSucess,
            onError: onError
          );
        });
  }


  forgetpassword({required String email,  required void Function() onError, required void Function() onSucess}){
    auth.sendPasswordResetEmail(email: email).then((value){
        onSucess.call();
    }).onError((error, t){
      onError.call();
    });
  }
  logout(){
    auth.signOut(); }
}
