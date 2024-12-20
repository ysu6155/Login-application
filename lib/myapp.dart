
import 'package:flutter/material.dart';
import 'package:login_app/screens/welcome_screen.dart';

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:welcomeScreen() ,
    );
  }
}
