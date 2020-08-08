import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  String id;
  String email;
  String password;
  String name;
  String confirmedPassword;

  User({this.id,this.email,this.password, this.name});

  User.fromDocument(DocumentSnapshot document){
    id = document.documentID;
    name = document.data['name'] as String;
    email = document.data['email'] as String;
  }

  DocumentReference get firestoreRef => Firestore.instance.document('users/$id');

  Future<void> saveData() async{
    await firestoreRef.setData(toMap());
  }

  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'email': email,
    };
  }
}