import 'package:flutter/material.dart';
import 'dart:async';
import 'fourth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


 import 'firebase_options.dart';
 import 'auth.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add a delay to show the splash screen for a few seconds
    Timer(Duration(seconds: 3), () {
      // Navigate to the home page after the delay
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Container(
        color: Colors.white, // Background color
        child: Image.asset(
          'assets/images/logo.png', // Replace with your image asset path
          width: 800, // Set the width as needed
          height: 800, // Set the height as needed
        ),
      ),
    ),
  );
}

}
void main() async{    ///put an async after decommenting
  
 

// ...

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
      },
    );
  }
}





class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe to Navigate',
      home: SwipeScreen(),
    );
  }
}

class SwipeScreen extends StatelessWidget {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: PageView(
        controller: _controller,
        onPageChanged: (int page) {
          // Update the current page index
          _currentPage = page;
        },
        children: <Widget>[
          FirstScreen(),
          SecondScreen(),
          ThirdScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (int page) {
          // Navigate to the selected page
          _controller.animateToPage(
            page,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Screen 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Screen 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Screen 3',
          ),
        ],
      ),
    );
  }
}



class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[350],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/first.png', // Replace with the path to your image
              width: 400, // Adjust the width of the image as needed
              height: 400, // Adjust the height of the image as needed
            ),
            SizedBox(height: 10), // Add spacing between the image and text
            Text(
              'Welcome to SAFEZONE',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[350],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/second.png', // Replace with the path to your image
              // width: 100, // Adjust the width of the image as needed
              // height: 100, // Adjust the height of the image as needed
            ),
            SizedBox(height: 10), // Add spacing between the image and text
            Text(
              'Join us in creating a stronger, more resilient community during times that matter most',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}




 // Import the FourthScreen class

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.grey[350],
      child: Center(
        
        child: Column(
  
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image.asset('assets/images/third.png'),
            Text(
              'You can either offer shelter during disasters or seek refuge if in crisis.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the FourthScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Next'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
