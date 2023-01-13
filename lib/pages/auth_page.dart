import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  //initially show the login Page
  bool showloginPage = true;
  void toggleScreens() {
    setState(() {
      showloginPage = !showloginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginPage) {
      return LoginPage(showRegisterPage: toggleScreens, showloginPage: () {  },);
    } else {
      return RegisterPage(showloginPage: toggleScreens, showLoginPage: () {  },);
    }
  }
}
