import 'package:flutter/material.dart';
import 'package:new_app/pages/last_page.dart';
import 'package:new_app/pages/second_page.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/consts/images.dart';
import 'package:new_app/custom_widget/my_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class FirstPage extends StatelessWidget {
   FirstPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: MyText(
                text: "Skip",
              ),
            ),
            SizedBox(height: 50,),
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              width: double.infinity,
                child: Image.asset(page1,fit: BoxFit. fitWidth,),
            ),
            SizedBox(height: 20,),
            MyText(
              text: "MORE STRETCHING",
              fontSize: 18,
              textColor: lite1BlackColor,
            ),
            Divider(
              color: lite1BlackColor,
              endIndent: 20,
            ),
            MyText(
              text: 'LESS STRETCHING',
              fontSize: 18,
              textColor: lite1BlackColor,
            ),
          ],
        ),
      ),

    );
  }
}
