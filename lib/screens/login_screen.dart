import 'package:flutter/material.dart';
import 'package:login_app/screens/signup_screen.dart';

import '../Widgets/social_networks.dart';
import '../Widgets/textformfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Login",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 25,
                ),
                Text("Please Login to access the application.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                SizedBox(
                  height: 60,
                ),
                SocialNetworks(),
                chesterfield(Foergetpassword: true,textchek: "Remember me",namebutton: "Login",width: 40,flex: 4,),
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
                          builder: (context) => SignupScreen(),
                        ),
                      );
                    }, child: Text("Sign Up"))
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
