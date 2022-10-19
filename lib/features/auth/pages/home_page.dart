import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              children: [
                Text('Signed in  $user.email'),
                MaterialButton(onPressed: (){
                  FirebaseAuth.instance.signOut();
                },
                  color: Colors.deepPurple[400],
                  child: const Text('sign out'),
                )
              ],
            )
        )
    );
  }
}
