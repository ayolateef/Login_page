import 'package:flutter/cupertino.dart';
import 'package:login_page/features/auth/pages/email_login.dart';
import 'package:login_page/features/auth/pages/phone_login.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showPhoneLoginPage = true;
  @override
  Widget build(BuildContext context) {
    if (showPhoneLoginPage){
      return WelcomePage();
    } else {
      return EmailPage();
    }
  }
}
