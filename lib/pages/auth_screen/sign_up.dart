import 'package:flutter/material.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/custom_widget/my_text.dart';

import '../../consts/images.dart';
import 'email_sign_up.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Sign Up",
                fontSize: 22,
              ),
              SizedBox(height: 7,),
              MyText(
                text: "Please Signup to continue",
                textColor: lite1BlackColor,
              ),
              SizedBox(height: 44,),
              ///google button
              InkWell(
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: liteGrayColor,
                      borderRadius: BorderRadius.circular(23)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(children:[
                      Image.asset(google),
                      SizedBox(width: 30,),
                      MyText(text: "Continue with Google",)
                    ]),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(23)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(children:[
                      Image.asset(apple),
                      SizedBox(width: 20,),
                      MyText(text: "Continue with Apple",
                      textColor: Colors.white,)
                    ]),
                  ),
                ),
              ),
              ///apple button
              SizedBox(height: 20,),
              ///facebook button
              InkWell(
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: bluColor,
                      borderRadius: BorderRadius.circular(23)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(children:[
                      Image.asset(facebook),
                      SizedBox(width: 26,),
                      MyText(text: "Continue with Facbook",
                      textColor: Colors.white,)
                    ]),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ///email button
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EmailSignupScreen(),));
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: redColor,
                      borderRadius: BorderRadius.circular(23)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(children:[
                      Image.asset(email),
                      SizedBox(width: 26,),
                      MyText(text: "Continue with Email",
                      textColor: Colors.white,)
                    ]),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
