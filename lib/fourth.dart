
import 'package:flutter/material.dart';
import 'fifth.dart';
import 'sixth.dart';
import 'auth.dart';

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
           
          ],
        ),
      ),
    );
  }
}
