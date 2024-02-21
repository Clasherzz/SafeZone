import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'sixth.dart';


import 'package:cloud_firestore/cloud_firestore.dart';

class Collecting {
  final String? userId;
  Collecting({required this.userId});
  Future<void> fetchData() async {
    var collectionReference = FirebaseFirestore.instance.collection("Homegivers");

    // Create a query snapshot for the collection
    var snapshot = await collectionReference.get();

    List<Map<String, dynamic>> documentsList = [];

    // Check if the snapshot has data and convert it to a list
    if (snapshot.docs.isNotEmpty) {
      documentsList = snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    }
    
    // Print or use documentsList as needed
    print(documentsList);
  }
}
