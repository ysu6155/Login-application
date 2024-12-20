import 'package:flutter/material.dart';
import 'package:login_app/Widgets/social_networks.dart';
import 'package:login_app/Widgets/textformfield.dart';
import 'package:login_app/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("SignUp",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 25,
                ),
                Text("Please Sign Up to access the application.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                SizedBox(
                  height: 60,
                ),
                SocialNetworks(),
                chesterfield(width:32,flex: 1,Foergetpassword: false,namebutton: "Sign Up",textchek: "I agree Private Privacy",),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have an account? "),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    }, child: Text("Login"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
