import 'package:flutter/material.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/consts/images.dart';
import 'package:new_app/custom_widget/my_button.dart';
import 'package:new_app/custom_widget/my_container.dart';
import 'package:new_app/custom_widget/my_text.dart';
import 'package:new_app/splits_all_screen/week_1/day1_screen/day_1.dart';
import 'package:new_app/splits_all_screen/week_1/day2_screen/day_2.dart';
import 'package:new_app/splits_all_screen/week_1/day3_screen/day_3.dart';
import 'package:new_app/splits_all_screen/week_1/day4/rest_day.dart';
import 'package:new_app/splits_all_screen/week_1/day5_screen/day_5.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BeginnerPlanScreen extends StatelessWidget {
  const BeginnerPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(
          text: "Beginner Plan",
          fontSize: 20,
          textColor: Colors.white,
        ),
        centerTitle: true,
        toolbarHeight: 90,
        backgroundColor: bluColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              ///week 1
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: bluColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MyText(
                        textColor: Colors.white,
                        text: "Week 1",
                      ),
                      Spacer(),
                      MyText(
                        textColor: Colors.white,
                        text: "0/7",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    ///day 1
                    MyCustomContainer(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Day1Screen(),));
                      },
                      text: 'Day 1',
                      buttonText: 'Start',
                    ),
                    const SizedBox(height: 10,),
                    ///day 2
                    MyCustomContainer2(
                      text: "Day 2",
                      indicatorText: '0',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Day2Screen(),));
                      },
                    ),
                    const SizedBox(height: 10,),
                    ///day 3
                    MyCustomContainer2(
                      text: "Day 3",
                      indicatorText: '0',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Day3Screen(),));
                      },
                    ),
                    const SizedBox(height: 10,),
                    ///day 4
                    MyCustomContainer1(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RestDayScreen(),));
                      },
                        text: "Day 4",
                        image: const AssetImage(teacup)),
                    const SizedBox(height: 10,),
                    ///day 5
                    MyCustomContainer2(
                      text: "Day 5",
                      indicatorText: '0',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Day5Screen(),));
                      },
                    ),
                    const SizedBox(height: 10,),
                    ///day 6
                    MyCustomContainer2(
                      text: "Day 6",
                      indicatorText: '0',
                      onTap: () {},
                    ),
                    const SizedBox(height: 10,),
                    ///day 7
                    MyCustomContainer2(
                      text: "Day 7",
                      indicatorText: '0',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              ///week 2
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: litegray6Color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.flag,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MyText(
                        textColor: Colors.white,
                        text: "Week 2",
                      ),
                      Spacer(),
                      MyText(
                        textColor: Colors.white,
                        text: "0/7",
                      ),
                    ],
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
