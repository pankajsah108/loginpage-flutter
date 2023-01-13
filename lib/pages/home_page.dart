import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple.shade100,
        color: Colors.deepPurple.shade300,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          print(index);
        },
        items: const [
          Icon(
            Icons.home,
            size: 30.0,
          ),
          Icon(
            Icons.favorite,
            size: 30.0,
          ),
          Icon(
            Icons.settings,
            size: 30.0,
          ),
          Icon(
            Icons.settings,
            size: 30.0,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Signed In as:-' + user.email!),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(
                              showRegisterPage: () {}, showloginPage: () {  },
                            )));
              },
              color: Colors.deepPurple[200],
              child: const Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
