import 'package:flutter/material.dart';
import 'package:login_app/Widgets/social_networks.dart';
import 'package:login_app/screens/login_screen.dart';
import 'package:login_app/screens/signup_screen.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Text("Welcome",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
              Text("Please log in or Sign Up to access the application.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
              SizedBox(
                height: 15,
              ),
            Image.network("https://img.freepik.com/free-photo/computer-security-with-login-password-padlock_107791-16191.jpg"),
              SizedBox(
                height: 15,
              ),
             SocialNetworks(),
              Text("Or use email to register",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
              SizedBox(
                height: 50,
              ),

                SizedBox(width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)), // إلغاء الحواف
                    ),
                      backgroundColor: Colors.blue,
                    ),
                    ),


                    ),
                SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account"),
                    TextButton(onPressed: (){ Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );}, child: Text("Login"))
                    
                  ],
                ),


            ],
          ),
        ),
      ),
    );
  }
}
