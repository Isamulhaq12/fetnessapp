import 'package:flutter/material.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/consts/images.dart';
import 'package:new_app/custom_widget/my_button.dart';
import 'package:new_app/custom_widget/my_text.dart';
import 'package:new_app/model/day1_model.dart';
import 'package:new_app/splits_all_screen/week_1/day1_screen/downward%20_facing%20_dog%20_with%20_bent%20_knees.dart';
import 'package:new_app/splits_all_screen/week_1/day2_screen/arm_raises.dart';
import 'package:new_app/splits_all_screen/week_1/day2_screen/chair.dart';
import 'package:new_app/splits_all_screen/week_1/day2_screen/seated_side_bend_left.dart';
import 'package:new_app/splits_all_screen/week_1/day2_screen/seated_side_bend_right.dart';



class Day2Screen extends StatefulWidget {
  const Day2Screen({super.key});

  @override
  State<Day2Screen> createState() => _Day2ScreenState();
}

class _Day2ScreenState extends State<Day2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(
          text: "Day 2",
          textColor: Colors.white,
          fontSize: 20,
        ),
        backgroundColor: bluColor,
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body:   SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///instruction
              const MyText(
                text: "Instruction",
                fontSize: 18,
              ),
              const SizedBox(height: 10,),
              const MyText(
                text:
                "Lorem ipsum dolor sit amet consectetur."" Iaculis ut "
                    "\nbibendum habitant quam lorem egestas.""Felis "
                    "\ninteger aliquet et egestas.",
                textColor: liteblack3Color,
              ),
              const SizedBox(height: 20,),
              ///Coach and change language
              const SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(avatarimg),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Coach",
                          fontSize: 18,
                        ),
                        MyText(
                          text: "Heidi",
                          fontSize: 12,
                          textColor: liteblack3Color,
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded,size: 18,)
                  ],
                ),
              ),
              const SizedBox(height: 38,),
              ///Exercises
              const MyText(text: "Exercises",fontSize: 18,),
              const SizedBox(height: 25,),
              SizedBox(
                height: 400,width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: day1.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: liteGray4Color,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Image(image: day1[index].image,fit: BoxFit.cover,)),
                            const SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(text: day1[index].upText,fontSize: 16,),
                                SizedBox(height: 6,),
                                MyText(text: day1[index].downText,textColor: litegray7Color,),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),),
              ),
            ],
          ),
        ),
      ),
      ///start button
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 25),
            child: MyButton(
              height: 50,
              circularRadius: BorderRadius.circular(25),
              containerColor: litegreen2Color,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SeatedLeftScreen(),));
              },
              text: 'Start',
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  List<dynamic> day1 =[
    DayModel(
        upText: "Arm Raises",
        downText: "00:50",
        image: const AssetImage(armRaises),

    ),
    DayModel(
        upText: "Chair",
        downText: "00:40",
        image: const AssetImage(chair)
    ),
    DayModel(
        upText: "Seated Side Bend Right",
        downText: "00:30",
        image: const AssetImage(seatedSide)
    ),
    DayModel(
        upText: "Seated Side Bend Left",
        downText: "00:60",
        image: const AssetImage(seatedSideLeft)
    ),
    DayModel(
        upText: "",
        downText: "",
        image: const AssetImage(hlp)
    ),
  ];
}
