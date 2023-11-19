import 'package:flutter/material.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/consts/images.dart';
import 'package:new_app/custom_widget/my_text.dart';

class SeatedLeftScreen extends StatefulWidget {
  const SeatedLeftScreen({super.key});

  @override
  State<SeatedLeftScreen> createState() => _SeatedLeftScreenState();
}

class _SeatedLeftScreenState extends State<SeatedLeftScreen> {
  int min = 00;
  int second = 00;

  void incrementCounter() {
    setState(() {
      second++;
    });
  }

  void decrementCounter() {
    setState(() {
      second--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(
          text: "Animation",
          textColor: Colors.white,
          fontSize: 18,
        ),
        backgroundColor: bluColor,
        toolbarHeight: 80,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: litegray8Color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(seatedLeft,),
            ),
            const SizedBox(
              height: 10,
            ),
            const MyText(
              text: "Seated Side Bend Left",
              fontBold: FontWeight.bold,
              fontSize: 18,
            ),
            const SizedBox(
              height: 10,
            ),

            ///time counter
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => decrementCounter(),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: liteGray3Color),
                    ),
                    child: const Icon(Icons.remove),
                  ),
                ),
                const SizedBox(width: 10),
                MyText(
                    text: '$min : $second',
                    fontBold: FontWeight.w500,
                    fontSize: 17),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () => incrementCounter(),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: liteGray3Color),
                    ),
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const MyText(
              text: "Duration",
              fontBold: FontWeight.bold,
              fontSize: 18,
            ),
            const SizedBox(height: 10,),
            const MyText(
              text:
              "Lorem ipsum dolor sit amet consectetur."
                  " Pretium sit penatibus tortor vulputate auctor placerat aliquam."
                  " Lacinia accumsan cum tellus mauris sed cursus nisl aliquet urna."
                  " Ac volutpat in gravida orci.",textColor: litegray9Color,fontSize: 14,
            ),
            const SizedBox(height: 20,),
            const MyText(
              text:
              "Lorem ipsum dolor sit amet consectetur. Eu tempor sem eget sagittis nunc eleifend.",textColor: litegray9Color,fontSize: 14,
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: litegray10Color
                  ),
                  child: const Icon(Icons.arrow_back,color: Colors.white,),
                ),
                const SizedBox(width: 6,),
                const MyText(text: "1/5",fontSize: 18,),
                const SizedBox(width: 6,),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: litegreen2Color
                  ),
                  child: const Icon(Icons.arrow_forward,color: Colors.white),
                ),
                const Spacer(),
                Container(
                  height:45,
                  width: 80,
                  decoration: BoxDecoration(
                    color: litegreen2Color,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(child: MyText(text: "Close",)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
