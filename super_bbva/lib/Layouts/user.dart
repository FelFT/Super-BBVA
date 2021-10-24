import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class User with ChangeNotifier {
  String id;
  String displayNombre;
  String photoUrl;
  String email;

  User({
    this.id,
    this.displayNombre,
    this.photoUrl,
    this.email,
  });

  factory User.fromFirestone(DocumentSnapshot userDoc)



}
