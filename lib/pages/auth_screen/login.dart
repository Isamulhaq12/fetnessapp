import 'package:flutter/material.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/consts/images.dart';
import 'package:new_app/custom_widget/my_button.dart';
import 'package:new_app/custom_widget/my_text.dart';
import 'package:new_app/custom_widget/my_textfeild.dart';
import 'package:new_app/pages/auth_screen/sign_up.dart';
import 'package:new_app/splits_all_screen/splits_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController= TextEditingController();
  TextEditingController _passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 70),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               ///text
               MyText(
                 text: "Log in",
                 fontSize: 24,
                 fontBold: FontWeight.bold,
               ),
               SizedBox(height: 7,),
               ///text
               MyText(
                 text: "Please Login to continue",
                 textColor: lite1BlackColor,
               ),
               SizedBox(height: 35,),
               ///email textfeild
               MyText(text: "Email",),
               SizedBox(height: 7,),
               TextFormField(
                 controller: _emailController,
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
               ///password textfeild
               MyText(text: "Password",),
               SizedBox(height: 7,),
               TextFormField(
                 controller: _passwordController,
                 obscureText: true,
                 decoration: InputDecoration(
                   suffixIcon: Icon(Icons.remove_red_eye_outlined),
                   hintText: "Enter Password",
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
               ///forgot password button
               Align(
                 alignment: Alignment.topRight,
                 child: InkWell(
                   onTap: (){},
                   child: MyText(
                     text:"Forgot Password?",
                   ),
                 ),
               ),
               SizedBox(height: 40,),
               /// Continue button
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 40),
                 child: MyButton(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => SplitsScreen(),));
                   },
                   height: 50,
                   circularRadius:BorderRadius.circular(23),
                   fontSize: 20,
                   text: "Continue",
                 containerColor: bluColor,
                   color: Colors.white,
                 ),
               ),
               SizedBox(height: 20,),
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
                       SizedBox(width: 26,),
                       MyText(text: "Continue with Google",)
                     ]),
                   ),
                 ),
               ),
               SizedBox(height: 20,),
               ///apple button
               InkWell(
                 child: Container(
                   height: 55,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.black,
                     borderRadius: BorderRadius.circular(23)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal:12),
                     child: Row(children:[
                        Image.asset(apple),
                       SizedBox(width: 26,),
                       MyText(text: "Continue with Apple",textColor: Colors.white,)
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
                     color: liteblueColor,
                     borderRadius: BorderRadius.circular(23)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 28),
                     child: Row(children:[
                        Image.asset(facebook),
                       SizedBox(width: 26,),
                       MyText(text: "Continue with Facebook",textColor: Colors.white,)
                     ]),
                   ),
                 ),
               ),
               SizedBox(height: 44,),
               ///signup button
               Row(
                 mainAxisAlignment:MainAxisAlignment.center ,
                 children: [
                 MyText(text:"Don’t have an Account?",textColor: lite2blackColor,),
                 InkWell(onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpScreen(),));
                 },
                     child: MyText(text:"Signup",)),
               ],)

             ],
           ),
         ),
       ),
    );
  }
}
