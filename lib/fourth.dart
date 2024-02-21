// // fourth_screen.dart

import 'package:flutter/material.dart';
import 'fifth.dart';
import 'sixth.dart';
import 'auth.dart';



// // class FourthScreen extends StatelessWidget {
// //   @overrideR
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Fourth Screen'),
// //       ),
// //       body: Center(
// //         child: Text(
// //           'This is the fourth screen',
// //           style: TextStyle(fontSize: 24),
// //         ),
// //       ),
// //     );
// //   }
// // }
// // class FourthScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Fourth'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text(
// //               'This is the fourth screen',
// //               style: TextStyle(fontSize: 24),
// //             ),
// //             SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () {
// //                 // Navigate to the FourthScreen
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => FifthScreen()),
// //                 );
// //               },
// //               child: Text('Go to Fourth Screen'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


class FourthScreen extends StatelessWidget {
  final String? userId; // Add this line to accept userId as a parameter

  FourthScreen({required this.userId});
  @override
  // String userId=_signInWithEmailAndPassword();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'We help during disasters, linking those in need with safe shelter. Join us in building a resilient community.',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Container(
              width: 300,
              height: 50,
            
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the FifthScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserDataInput1(userId: userId,)),
                );
              },
              child: Text('Find a home',style: TextStyle(fontSize: 25)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, 
              )
            ),),
            SizedBox(height: 40),
            Container(
              height: 50,
              width: 300,
              
              child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                // Navigate to the SixthScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserDataInput(userId: userId,)),
                );
              },
              child: Text('Provide a home', style: TextStyle(fontSize:25 ),),
            ),),
            // Container(
            //   width: 300,
            //   height: 50,
            
            // child: ElevatedButton(
            //   onPressed: () {
            //     // Navigate to the FifthScreen
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => SignUpScreen()),
            //     );
            //   },
            //   child: Text('Go to auth Screen'),
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.black, 
            //   )
            // ),),
          ],
        ),
      ),
    );
  }
}
// this is email password authentication with userid

// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class FourthScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: null,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // ... (other widgets)
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the LoginScreen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LoginScreen()),
//                 );
//               },
//               child: Text('Go to Login Screen'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//               ),
//             ),
//             // ... (other widgets)
//           ],
//         ),
//       ),
//     );
//   }
// }

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   void _signInWithEmailAndPassword() async {
//     try {
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//         email: _emailController.text,
//         password: _passwordController.text,
//       );

//       // Check if the user is authenticated
//       if (userCredential.user != null) {
//         String userId = userCredential.user!.uid;
//         print(userId);
//         // Navigate to the authenticated user's home screen or dashboard
//         // Example: Navigator.pushReplacementNamed(context, '/home');
//         print('Authentication successful.');
//       }
//     } catch (e) {
//       print('Authentication failed: $e');
//       // Handle authentication errors here
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login Screen',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Login Screen'),
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   TextFormField(
//                     controller: _emailController,
//                     decoration: InputDecoration(labelText: 'Email'),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your email';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: 20),
//                   TextFormField(
//                     controller: _passwordController,
//                     decoration: InputDecoration(labelText: 'Password'),
//                     obscureText: true,
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your password';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         _signInWithEmailAndPassword();
//                       }
//                     },
//                     child: Text('Login'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
