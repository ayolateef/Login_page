import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../auth_page.dart';
import 'email_login.dart';
import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return HomePage();
          } else {
            return AuthPage();
          }
        }),
    );
  }
}
