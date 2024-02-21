import 'package:flutter/material.dart';
import 'sixth.dart';
// class FifthScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Third Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'This is the fifth screen',
//               style: TextStyle(fontSize: 24),
//             ),
//             SizedBox(height: 20),
//             // ElevatedButton(
//             //   onPressed: () {
//             //     // Navigate to the FourthScreen
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute(builder: (context) => FourthScreen()),
//             //     );
//             //   },
//             //   child: Text('Go to Fourth Screen'),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


// class FifthScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Firestore Example',
//       home: UserDataInput(),
//     );
//   }
// }

// class UserDataInput extends StatefulWidget {
//   @override
//   _UserDataInputState createState() => _UserDataInputState();
// }

// class _UserDataInputState extends State<UserDataInput> {
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//   TextEditingController genderController = TextEditingController();
//   TextEditingController pincodeController = TextEditingController();

  


//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Data Input'),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Column(
//           children: <Widget>[
//             TextFormField(
//               controller: nameController,
//               decoration: InputDecoration(labelText: 'Name'),
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Please enter a name';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: addressController,
//               decoration: InputDecoration(labelText: 'Address'),
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Please enter an address';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: genderController,
//               decoration: InputDecoration(labelText: 'Gender'),
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Please enter a gender';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: pincodeController,
//               decoration: InputDecoration(labelText: 'Pin Code'),
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Please enter a pin code';
//                 }
//                 return null;
//               },
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (_formKey.currentState.validate()) {
//                   saveUserData({
//                     'name': nameController.text,
//                     'address': addressController.text,
//                     'gender': genderController.text,
//                     'pincode': pincodeController.text,
//                     // Add other fields as needed
//                   });
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                       content: Text('User data saved successfully.'),
//                     ),
//                   );
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void saveUserData(Map<String, dynamic> userData) {
//     // Save the user data as a document in the "accommodate" collection
//     FirebaseFirestore.instance.collection("accommodate").add(userData);
//   }
// }





// class FifthScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Firestore Example',
//       home: UserDataInput(),
//     );
//   }
// }

// class UserDataInput extends StatefulWidget {
//   @override
//   _UserDataInputState createState() => _UserDataInputState();
// }

// class _UserDataInputState extends State<UserDataInput> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//   TextEditingController genderController = TextEditingController();
//   TextEditingController pincodeController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController();
//     addressController = TextEditingController();
//     genderController = TextEditingController();
//     pincodeController = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(''),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Column(
//           children: <Widget>[
//             TextFormField(
//               controller: nameController,
//               decoration: InputDecoration(labelText: 'Name'),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter a name';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: addressController,
//               decoration: InputDecoration(labelText: 'Address'),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter an address';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: genderController,
//               decoration: InputDecoration(labelText: 'Gender'),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter a gender';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: pincodeController,
//               decoration: InputDecoration(labelText: 'Pin Code'),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter a pin code';
//                 }
//                 return null;
//               },
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   saveUserData({
//                     'name': nameController.text,
//                     'address': addressController.text,
//                     'gender': genderController.text,
//                     'pincode': pincodeController.text,
//                     // Add other fields as needed
//                   });
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                       content: Text('User data saved successfully.'),
//                     ),
//                   );
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void saveUserData(Map<String, dynamic> userData) {
//     // Save the user data as a document in the "accommodate" collection
//     FirebaseFirestore.instance.collection("accommodate").add(userData);
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(FifthScreen());
// }

// class FifthScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Firestore Example',
//       home: UserDataInput(),
//     );
//   }
// }

// class UserDataInput extends StatefulWidget {
//   @override
//   _UserDataInputState createState() => _UserDataInputState();
// }

// class _UserDataInputState extends State<UserDataInput> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//   TextEditingController genderController = TextEditingController();
//   TextEditingController pincodeController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController();
//     addressController = TextEditingController();
//     genderController = TextEditingController();
//     pincodeController = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: null,
//       body: Center(
//         child: Container(
//           width: 300, // Adjust the width of the box as needed
//           padding: EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: Colors.grey),
//           ),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 TextFormField(
//                   controller: nameController,
//                   decoration: InputDecoration(labelText: 'Name'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a name';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: addressController,
//                   decoration: InputDecoration(labelText: 'Address'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter an address';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: genderController,
//                   decoration: InputDecoration(labelText: 'Gender'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a gender';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: pincodeController,
//                   decoration: InputDecoration(labelText: 'Pin Code'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a pin code';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       saveUserData({
//                         'name': nameController.text,
//                         'address': addressController.text,
//                         'gender': genderController.text,
//                         'pincode': pincodeController.text,
//                         // Add other fields as needed
//                       });
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('User data saved successfully.'),
//                         ),
//                       );
//                     }
//                   },
//                   child: Text('Submit'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void saveUserData(Map<String, dynamic> userData) {
//      FirebaseFirestore.instance.collection("accommodate").add(userData);
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class FifthScreen extends StatefulWidget {
//   @override
//   _FifthScreen createState() => _UserDataInputState();
// }

// class _UserDataInputState extends State<UserDataInput> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//   TextEditingController genderController = TextEditingController();
//   TextEditingController pincodeController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final User? user = FirebaseAuth.instance.currentUser;

//     if (user == null) {
//       // Handle the case when the user is not logged in
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('User Not Logged In'),
//         ),
//         body: Center(
//           child: Text('Please log in to enter user data.'),
//         ),
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Data Input'),
//       ),
//       body: Center(
//         child: Container(
//           width: 300,
//           padding: EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: Colors.grey),
//           ),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 TextFormField(
//                   controller: nameController,
//                   decoration: InputDecoration(labelText: 'Name'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a name';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: addressController,
//                   decoration: InputDecoration(labelText: 'Address'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter an address';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: genderController,
//                   decoration: InputDecoration(labelText: 'Gender'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a gender';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: pincodeController,
//                   decoration: InputDecoration(labelText: 'Pin Code'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a pin code';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 10),
//                 ElevatedButton(
//                   onPressed: () async {
//                     if (_formKey.currentState!.validate()) {
//                       final userId = user.uid;
//                       final userData = {
//                         'name': nameController.text,
//                         'address': addressController.text,
//                         'gender': genderController.text,
//                         'pincode': pincodeController.text,
//                         // Add other fields as needed
//                       };

//                       // Create a Firestore document for the user using their UID
//                       await FirebaseFirestore.instance
//                           .collection('users')
//                           .doc(userId)
//                           .set(userData);

//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('User data saved successfully.'),
//                         ),
//                       );
//                     }
//                   },
//                   child: Text('Submit'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'auth.dart';

// class UserDataInput1 extends StatefulWidget {
//   final String? userId; // Pass the userId as a parameter to UserDataInput

//   UserDataInput1({required this.userId});

//   @override
//   _UserDataInputState createState() => _UserDataInputState();
// }

// class _UserDataInputState extends State<UserDataInput1> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//   TextEditingController genderController = TextEditingController();
//   TextEditingController pincodeController = TextEditingController();
//   TextEditingController descriptionController = TextEditingController();
//   TextEditingController accommodationsController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController();
//     addressController = TextEditingController();
//     genderController = TextEditingController();
//     pincodeController = TextEditingController();
//     descriptionController = TextEditingController();
//     accommodationsController = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: null,
//       body: Center(
//         child: Container(
//           width: 300, // Adjust the width of the box as needed
//           padding: EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: Colors.grey),
//           ),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 TextFormField(
//                   controller: nameController,
//                   decoration: InputDecoration(labelText: 'Name'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a name';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: addressController,
//                   decoration: InputDecoration(labelText: 'Address'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter an address';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: genderController,
//                   decoration: InputDecoration(labelText: 'Gender'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a gender';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: pincodeController,
//                   decoration: InputDecoration(labelText: 'Pin Code'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a pin code';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: descriptionController,
//                   decoration: InputDecoration(labelText: 'Description'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a description';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: accommodationsController,
//                   decoration: InputDecoration(labelText: 'Accommodations Available'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the number of accommodations available';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       saveUserData({
//                         'name': nameController.text,
//                         'address': addressController.text,
//                         'gender': genderController.text,
//                         'pincode': pincodeController.text,
//                         'description': descriptionController.text,
//                         'accommodationsAvailable': accommodationsController.text,
//                         // Add other fields as needed
//                       });
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('User data saved successfully.'),
//                         ),
//                       );
//                     }
//                   },
//                   child: Text('Submit'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void saveUserData(Map<String, dynamic> userData) {
//     // Use the userId passed as a parameter to create a document for each user
//     FirebaseFirestore.instance.collection("Hometaker").doc(widget.userId).set(userData);
//   }
// }
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'auth.dart';

class UserDataInput1 extends StatefulWidget {
  final String? userId;

  UserDataInput1({required this.userId});

  @override
  _UserDataInputState createState() => _UserDataInputState();
}

class _UserDataInputState extends State<UserDataInput1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController accommodationsController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController aadharNumberController = TextEditingController();

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
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
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
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('User data saved successfully.'),
                        ),
                      );
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
    FirebaseFirestore.instance.collection("Hometaker").doc(widget.userId).set(userData);
  }
}
