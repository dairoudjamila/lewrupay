// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String idUser;
  final String email;
  final String nomPrenom;
  final String dateNaiss;
  UserModel({
    required this.idUser,
    required this.email,
    required this.nomPrenom,
    required this.dateNaiss,
  });

  UserModel copyWith({
    String? idUser,
    String? email,
    String? nomPrenom,
    String? dateNaiss,
  }) {
    return UserModel(
      idUser: idUser ?? this.idUser,
      email: email ?? this.email,
      nomPrenom: nomPrenom ?? this.nomPrenom,
      dateNaiss: dateNaiss ?? this.dateNaiss,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idUser': idUser,
      'email': email,
      'nomPrenom': nomPrenom,
      'dateNaiss': dateNaiss,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      idUser: map['idUser'] as String,
      email: map['email'] as String,
      nomPrenom: map['nomPrenom'] as String,
      dateNaiss: map['dateNaiss'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(idUser: $idUser, email: $email, nomPrenom: $nomPrenom, dateNaiss: $dateNaiss)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.idUser == idUser &&
        other.email == email &&
        other.nomPrenom == nomPrenom &&
        other.dateNaiss == dateNaiss;
  }

  @override
  int get hashCode {
    return idUser.hashCode ^
        email.hashCode ^
        nomPrenom.hashCode ^
        dateNaiss.hashCode;
  }
}
