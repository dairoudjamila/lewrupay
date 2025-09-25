// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TransactionModel {
  String id;
  String numSender;
  String numReceiver;
  double amount;
  TransactionType type;
  String date;
  TransactionModel({
    required this.id,
    required this.numSender,
    required this.numReceiver,
    required this.amount,
    required this.type,
    required this.date,
  });

  TransactionModel copyWith({
    String? id,
    String? numSender,
    String? numReceiver,
    double? amount,
    TransactionType? type,
    String? date,
  }) {
    return TransactionModel(
      id: id ?? this.id,
      numSender: numSender ?? this.numSender,
      numReceiver: numReceiver ?? this.numReceiver,
      amount: amount ?? this.amount,
      type: type ?? this.type,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'numSender': numSender,
      'numReceiver': numReceiver,
      'amount': amount,
      'type': type.toString(),
      'date': date,
    };
  }

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    return TransactionModel(
      id: map['id'] as String,
      numSender: map['numSender'] as String,
      numReceiver: map['numReceiver'] as String,
      amount: map['amount'] as double,
      type: map['type'] as TransactionType,
      date: map['date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TransactionModel.fromJson(String source) =>
      TransactionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TransactionModel(id: $id, numSender: $numSender, numReceiver: $numReceiver, amount: $amount, type: $type, date: $date)';
  }

  @override
  bool operator ==(covariant TransactionModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.numSender == numSender &&
        other.numReceiver == numReceiver &&
        other.amount == amount &&
        other.type == type &&
        other.date == date;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        numSender.hashCode ^
        numReceiver.hashCode ^
        amount.hashCode ^
        type.hashCode ^
        date.hashCode;
  }
}

enum TransactionType { send, receive, data, credit }
