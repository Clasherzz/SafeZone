import 'package:flutter/material.dart';
import 'auth.dart';
import 'eigth.dart';


import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'auth.dart';




// Custom widget to display a document
class DocumentDisplayWidget extends StatelessWidget {
  final Map<String, dynamic> documentData;

  DocumentDisplayWidget({required this.documentData});

  @override
  Widget build(BuildContext context) {
    // Customize the widget to display the document data
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('Name: ${documentData['name']}'),
            subtitle: Column(
              children: [
                Text('Pincode: ${documentData['pincode']}'),
                Text('Adress: ${documentData['adress']}'),
                Text('Gender: ${documentData['gender']}'),
                Text('Phone Number: ${documentData['phonenumber']}')
              ],
            )
            
            // Add more fields as needed
          ),
        ],
      ),
    );
  }
}
class Collecting {
  final BuildContext context; // Add a context parameter to the class

  Collecting({required this.context});
  Future<void> fetchData(String inputtedPincode) async {
    var collectionReference = FirebaseFirestore.instance.collection("Hometaker");

    // Create a query snapshot for the collection
    var snapshot = await collectionReference.get();

    List<Map<String, dynamic>> documentsList = [];

    // Check if the snapshot has data and convert it to a list
    if (snapshot.docs.isNotEmpty) {
      documentsList = snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
      List<Widget> matchingDocumentsWidgets = [];
      // Compare the inputted pincode with pincodes in the documents list
      for (var document in documentsList) {
        String documentPincode = document['pincode'] ?? ''; // Replace 'pincode' with your actual field name
        if (documentPincode == inputtedPincode) {
          // Perform the desired action when a match is found
          // print('Match found: $document');
           matchingDocumentsWidgets.add(DocumentDisplayWidget(documentData: document));
          // You can display information about the matched document here
        }
      }
        showDialog(
        context: this.context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(' The list of people looking for accomadation near you'),
            content: SingleChildScrollView(
              child: Column(
                children: matchingDocumentsWidgets,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    
    }
  }
}



class UserDataInput extends StatefulWidget {
  final String? userId;

  UserDataInput({required this.userId});

  @override
  _UserDataInputState createState() => _UserDataInputState();
}

class _UserDataInputState extends State<UserDataInput> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController accommodationsController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController aadharNumberController = TextEditingController();
  TextEditingController cautionDepositController = TextEditingController(); // New field

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    addressController = TextEditingController();
    genderController = TextEditingController();
    pincodeController = TextEditingController();
    descriptionController = TextEditingController();
    accommodationsController = TextEditingController();
    phoneNumberController = TextEditingController();
    aadharNumberController = TextEditingController();
    cautionDepositController = TextEditingController(); // Initialize the new field
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: addressController,
                  decoration: InputDecoration(labelText: 'Address'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an address';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: genderController,
                  decoration: InputDecoration(labelText: 'Gender'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a gender';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: pincodeController,
                  decoration: InputDecoration(labelText: 'Pin Code'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a pin code';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: descriptionController,
                  decoration: InputDecoration(labelText: 'Description'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: accommodationsController,
                  decoration: InputDecoration(labelText: 'Accommodations Available'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the number of accommodations available';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: phoneNumberController,
                  decoration: InputDecoration(labelText: 'Phone Number'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a phone number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: aadharNumberController,
                  decoration: InputDecoration(labelText: 'Aadhar Number'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an Aadhar number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: cautionDepositController,
                  decoration: InputDecoration(labelText: 'Caution Deposit'), // New field
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a caution deposit';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () async{
                    if (_formKey.currentState!.validate()) {
                      saveUserData({
                        'name': nameController.text,
                        'address': addressController.text,
                        'gender': genderController.text,
                        'pincode': pincodeController.text,
                        'description': descriptionController.text,
                        'accommodationsAvailable': accommodationsController.text,
                        'phonenumber': phoneNumberController.text,
                        'adharnumber': aadharNumberController.text,
                        'cautiondeposit': cautionDepositController.text, // Include the new field
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('User data saved successfully.'),
                        ),
                      );
                      var collector = Collecting(context:context);
                      
  // Call the fetchData function to retrieve data from Firestore
                      // await collector.fetchData( );
                      await collector.fetchData(pincodeController.text);

                    }
          
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void saveUserData(Map<String, dynamic> userData) {
    FirebaseFirestore.instance.collection("Homegivers").doc(widget.userId).set(userData);
  }
}
