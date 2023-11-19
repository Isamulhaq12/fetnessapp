import 'package:flutter/material.dart';

import '../consts/images.dart';
import '../custom_widget/my_text.dart';
class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 100),
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
              child: Image.asset(page3,fit: BoxFit. fitWidth,),
            ),
          ],
        ),
      ),
    );
  }
}
