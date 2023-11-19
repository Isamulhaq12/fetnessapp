import 'package:flutter/material.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/custom_widget/my_button.dart';
import 'package:new_app/custom_widget/my_text.dart';
import 'package:new_app/custom_widget/my_textfeild.dart';

import 'login.dart';
class EmailSignupScreen extends StatefulWidget {
   EmailSignupScreen({super.key});


  @override
  State<EmailSignupScreen> createState() => _EmailSignupScreenState();
}

class _EmailSignupScreenState extends State<EmailSignupScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emilController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(text: "Sign up",fontSize: 22,),
              SizedBox(height: 7,),
              MyText(textColor: lite1BlackColor,text: "Please Signup to continue",),

              ///user name textfield
              SizedBox(height: 35,),
              MyText(text: "User Nmae",),
              SizedBox(height: 7,),
              TextFormField(
              controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
                  ),
              SizedBox(height: 10,),
              /// email textfeild
              MyText(text: "Email",),
              SizedBox(height: 7,),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              /// password textfield
              MyText(text: "Password",),
              SizedBox(height: 7,),
              TextFormField(
                controller: _nameController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ///confirm password  textfeild
              MyText(text: "Confirm Password",),
              SizedBox(height: 7,),
              TextFormField(
                controller: _nameController,
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  hintText: "Confirm Password",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 54,),
              ///signup button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: MyButton(
                  height: 50,
                  text: "Sign up",
                   color: Colors.white,
                   containerColor: bluColor,
                  circularRadius: BorderRadius.circular(23),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: "Don’t have an Account?",
                    textColor: lite2blackColor,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context) => LoginScreen(),));
                    },
                      child: MyText(text: "Login",))
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
