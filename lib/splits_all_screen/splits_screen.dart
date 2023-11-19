import 'package:flutter/material.dart';
import 'package:new_app/pages/navi_screen/navigation_screen.dart';
import 'package:new_app/splits_all_screen/beginner_%20plan.dart';

import '../consts/colors.dart';
import '../consts/images.dart';
import '../custom_widget/my_text.dart';
class SplitsScreen extends StatefulWidget {
  const SplitsScreen({super.key});

  @override
  State<SplitsScreen> createState() => _SplitsScreenState();
}

class _SplitsScreenState extends State<SplitsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: liteGray2Color,
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                ///image and tabbar
                Container(
                  color: Colors.white,
                  height: 350,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset(page4,fit: BoxFit.cover,),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: const Color(0xffEDEDED)),
                          child: TabBar(
                            isScrollable: true,
                              dividerColor:Colors.white ,
                              indicatorSize: TabBarIndicatorSize.tab,
                              unselectedLabelColor:Colors.black87,
                              labelColor: Colors.white,
                              labelStyle: const TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.w500
                              ),
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: bluColor,
                              ),
                              tabs: const [
                                Tab(text: "Beginner",),
                                Tab(text: "Intermediate"),
                                Tab(text: "Advanced"),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                ///container and text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen(),));
                            },
                              child: MyText(text: "SKIP",textColor: lite2blackColor,fontSize: 18,))),
                      MyText(text: "What’s your splits level?",fontSize: 18,),
                      SizedBox(height: 10,),
                      MyText(text: "Do the splits with the plan that suits you best",textColor: lite2blackColor,),
                      SizedBox(height: 20,),
                        ///1 container and text
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BeginnerPlanScreen(),));
                          },
                          child: Container(
                            height: 85,
                            width: 280,
                            decoration: BoxDecoration(
                              color: bluColor,
                                borderRadius: BorderRadius.circular(35)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Center(child: Column(
                                children: [
                                  MyText(text: "BEGINNER",textColor: Colors.white,),
                                  SizedBox(height: 10,),
                                  MyText(text: " Just started learning to do the splits",textColor: Colors.white,),
                                ],
                              )),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                      /// 2 container and text
                        Container(
                          height: 85,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.circular(35)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Center(child: Column(
                              children: [
                                MyText(text: "INTERMEDIATE",textColor: Colors.black,),
                                SizedBox(height: 10,),
                                MyText(text: " The angle of my legs can be mor \nthen 130",textColor: Colors.black),
                              ]
                            )),
                          ),
                        ),
                      SizedBox(height: 10,),
                      /// 3 container and text
                        Container(
                          height: 85,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.circular(35)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Center(child: Column(
                              children: [
                                MyText(text: "ADVANCED",textColor: Colors.black,),
                                SizedBox(height: 10,),
                                MyText(text: " The angle of my legs can almost\nreach 170",textColor: Colors.black),
                              ]
                            )),
                          ),
                        ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

        ),
      ),
    );
  }
}
