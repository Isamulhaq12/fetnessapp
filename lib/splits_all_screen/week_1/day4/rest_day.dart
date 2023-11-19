import 'package:flutter/material.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/consts/images.dart';
import 'package:new_app/custom_widget/my_button.dart';
import 'package:new_app/custom_widget/my_text.dart';
class RestDayScreen extends StatelessWidget {
  const RestDayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const MyText(text: "Rest Day",fontSize: 18,textColor: Colors.white,),
        centerTitle: true,
        backgroundColor: bluColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 80),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: litegreen2Color,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Image.asset(vector),
                ),
              ),
              const SizedBox(height: 47,),
              const MyText(
                text: "Your body and muscles need to get some rest",
                textColor: litegray10Color,
              ),
              const SizedBox(height: 200,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MyButton(
                    text: "FINISHED",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 60,
                  circularRadius: BorderRadius.circular(30),
                  containerColor: litegreen2Color,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
