import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/consts/images.dart';
import 'package:new_app/custom_widget/my_text.dart';
import 'package:new_app/model/home_screen_model.dart';
import 'package:new_app/pages/navi_screen/calender_screen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 241,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(60)),
                color: bluColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///text or circleavatar
                  const Row(
                    children: [
                      MyText(
                        text: "Raytory Roxty",
                        textColor: Colors.white,
                        fontSize: 20,
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                      ),
                    ],
                  ),
                  const MyText(
                    text: "ID Ra4755223",
                    textColor: liteGray3Color,
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  ///search textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          hintText: "Search",
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const MyText(
                          text: "Today",
                          textColor: Colors.white,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const MyText(
                          text: "Yesterday",
                          textColor: Colors.white,
                        ),
                        const Spacer(),
                         InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => CalendarScerren(),));
                          },
                            child: Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                // texts and circular
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 230,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const MyText(
                              text: "Fit Your Body And Make \nYour Healthy",
                              fontSize: 20,
                              fontBold: FontWeight.w700),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07,
                          ),
                          const MyText(
                              text: "Last Update 30 Min Ago",
                              fontSize: 14,
                              textColor: bluColor),
                        ],
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 160,
                      width: 100,
                      child: Center(
                        child: CircularPercentIndicator(
                          animation: true,
                          animationDuration: 10000,
                          radius: 110,
                          lineWidth: 7,
                          percent: 0.8,
                          progressColor: bluColor,
                          backgroundColor: liteGray4Color,
                          center: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MyText(
                                  text: "80%",
                                  fontSize: 20,
                                ),
                                MyText(
                                  text: "Done",
                                  textColor: bluColor,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // first text and button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MyText(
                        text: "For you better",
                        fontSize: 22,
                        fontBold: FontWeight.w700),
                    InkWell(
                      onTap: () {},
                      child: const MyText(
                          text: 'See All', textColor: bluColor, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: homeModel.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: homeModel[index].assetImage,
                                    fit: BoxFit.cover)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 50,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 7),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MyText(
                                          text: homeModel[index].topText,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            MyText(
                                              text: homeModel[index].bottomText,
                                              fontSize: 10,
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            //rating
                                            homeModel[index].rattingBar
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // second text and button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MyText(
                        text: 'Popular Process',
                        fontSize: 22,
                        fontBold: FontWeight.w700),
                    InkWell(
                      onTap: () {},
                      child: const MyText(
                          text: 'See All', textColor: bluColor, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: homeModel2.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: homeModel2[index].assetImage,
                                    fit: BoxFit.cover)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 50,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 7),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MyText(
                                          text: homeModel2[index].topText,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            MyText(
                                              text:
                                                  homeModel2[index].bottomText,
                                              fontSize: 10,
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            //rating
                                            homeModel2[index].rattingBar
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }

  List<dynamic> homeModel = [
    HomeScreenModel(
      assetImage: const AssetImage(pic1),
      topText: 'Yoga in Home',
      bottomText: 'Ms. Fiora Miches',
      rattingBar: RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemSize: 15,
        itemCount: 5,
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
    ),
    HomeScreenModel(
      assetImage: const AssetImage(pic1),
      topText: 'Yoga in Home',
      bottomText: 'Ms. Fiora Miches',
      rattingBar: RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemSize: 15,
        itemCount: 5,
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
    ),
  ];
  List<dynamic> homeModel2 = [
    HomeScreenModel(
      assetImage: const AssetImage(pic1),
      topText: 'Yoga in Home',
      bottomText: 'Ms. Fiora Miches',
      rattingBar: RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemSize: 15,
        itemCount: 5,
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
    ),
    HomeScreenModel(
      assetImage: const AssetImage(pic1),
      topText: 'Yoga in Home',
      bottomText: 'Ms. Fiora Miches',
      rattingBar: RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemSize: 15,
        itemCount: 5,
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
    ),
  ];
}
