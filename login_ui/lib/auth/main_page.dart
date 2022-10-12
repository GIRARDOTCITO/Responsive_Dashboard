import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import 'auth_page.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData)  {
            return const homepage();
          }else{
            return const AuthPage();
          }
        },
      ),
    );
  }
}

