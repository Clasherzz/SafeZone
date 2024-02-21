import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'sixth.dart';


// class CheckMatchingPincodes extends StatefulWidget {
//   @override
//   _CheckMatchingPincodesState createState() => _CheckMatchingPincodesState();
// }

// class _CheckMatchingPincodesState extends State<CheckMatchingPincodes> {
//   final CollectionReference homeGiversCollection =
//       FirebaseFirestore.instance.collection('homegivers');
//   final CollectionReference homeTakersCollection =
//       FirebaseFirestore.instance.collection('hometakers');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Check Matching Pincodes'),
//       ),
//       body: FutureBuilder<QuerySnapshot>(
//         future: homeGiversCollection.get(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator();
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Text('No home givers available.');
//           } else {
//             return ListView.builder(
//               itemCount: snapshot.data!.docs.length,
//               itemBuilder: (context, index) {
//                 final DocumentSnapshot homeGiverDoc = snapshot.data!.docs[index];
//                 final Map<String, dynamic> homeGiverData =
//                     homeGiverDoc.data() as Map<String, dynamic>;
//                 final String homeGiverPincode =
//                     homeGiverData['pincode'] ?? '';

//                 // Retrieve and display hometakers with the same pincode
//                 return FutureBuilder<QuerySnapshot>(
//                   future: homeTakersCollection
//                       .where('pincode', isEqualTo: homeGiverPincode)
//                       .get(),
//                   builder: (context, hometakerSnapshot) {
//                     if (hometakerSnapshot.connectionState ==
//                         ConnectionState.waiting) {
//                       return CircularProgressIndicator();
//                     } else if (hometakerSnapshot.hasError) {
//                       return Text('Error: ${hometakerSnapshot.error}');
//                     } else if (!hometakerSnapshot.hasData ||
//                         hometakerSnapshot.data!.docs.isEmpty) {
//                       return ListTile(
//                         title: Text('Home Giver: ${homeGiverData['Name']}'),
//                         subtitle: Text('No matching hometaker found.'),
//                       );
//                     } else {
//                       // Display details of matching hometakers
//                       return Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           ListTile(
//                             title: Text('Home Giver: ${homeGiverData['Name']}'),
//                             subtitle: Text('Matching Hometakers:'),
//                           ),
//                           ListView.builder(
//                             shrinkWrap: true,
//                             itemCount: hometakerSnapshot.data!.docs.length,
//                             itemBuilder: (context, hometakerIndex) {
//                               final DocumentSnapshot hometakerDoc =
//                                   hometakerSnapshot.data!.docs[hometakerIndex];
//                               final Map<String, dynamic> hometakerData =
//                                   hometakerDoc.data() as Map<String, dynamic>;

//                               return ListTile(
//                                 title: Text('Name: ${hometakerData['Name']}'),
//                                 subtitle: Text('Age: ${hometakerData['Age']}'),
//                               );
//                             },
//                           ),
//                         ],
//                       );
//                     }
//                   },
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
// class collecting{
// var collectionReference = FirebaseFirestore.instance.collection("Homegivers");

// // Create a query snapshot for the collection
// var snapshot = await collectionReference.get();

// List<Map<String, dynamic>> documentsList = [];

// // Check if the snapshot has data and convert it to a list
// if (snapshot.docs.isNotEmpty) {
//   documentsList = snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
// }
// print(documentsList);
// }
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
