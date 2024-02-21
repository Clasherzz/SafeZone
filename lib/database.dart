import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Firestore Example',
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Firestore Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to a screen to display user data
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => UserDataScreen()),
//                 );
//               },
//               child: Text('View User Data'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to a screen to display product data
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ProductDataScreen()),
//                 );
//               },
//               child: Text('View Product Data'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class UserDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('users').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }

          var users = snapshot.data.documents;

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              var user = users[index];
              var name = user['Name'];
              // var age = user['Age'];
              // var email = user['Email'];

              return ListTile(
                title: Text(name),
                subtitle: Text('Age: $age, Email: $email'),
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Data'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('products').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }

          var products = snapshot.data.documents;

          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              var product = products[index];
              var name = product['Name'];
              var price = product['Price'];
              var description = product['Description'];

              return ListTile(
                title: Text(name),
                subtitle: Text('Price: $price, Description: $description'),
              );
            },
          );
        },
      ),
    );
  }
}
