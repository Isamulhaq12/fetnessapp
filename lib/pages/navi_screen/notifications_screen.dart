import 'package:flutter/material.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/consts/images.dart';
import 'package:new_app/custom_widget/my_text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
      title: const Text("Notifications"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        backgroundColor: bluColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //container and dot
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        color: liteblue1Color,
                      ),
                      child: const Center(
                        child: MyText(
                          text: 'Lorem ipsum dolor sit amet consectetur. At'
                              '\nlibero feugiat sem aliquet quisque cras'
                              '\nultricies pellentesque. Morbi mauris ac'
                              '\ntristique tempor sed id. Id amet nullam.',
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(circle),fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              //container
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: liteGray5Color),
                child: const Center(
                  child: MyText(
                    text: 'Lorem ipsum dolor sit amet consectetur. At'
                        '\nlibero feugiat sem aliquet quisque cras'
                        '\nultricies pellentesque. Morbi mauris ac'
                        '\ntristique tempor sed id. Id amet nullam.',
                    textColor: Colors.white,
                  ),
                ),
              ),
              //container and dot
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: liteblue1Color,
                      ),
                      child: const Center(
                        child: MyText(
                          text: 'Lorem ipsum dolor sit amet consectetur. At'
                              '\nlibero feugiat sem aliquet quisque cras'
                              '\nultricies pellentesque. Morbi mauris ac'
                              '\ntristique tempor sed id. Id amet nullam.',
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(circle),fit: BoxFit.cover),
                      ),
                    ),

                  ],
                ),
              ),
              //container and button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: liteblue1Color),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: MyText(
                              text: 'App Update',
                              fontSize: 20,
                              fontBold: FontWeight.w700,
                              textColor: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const MyText(
                            text: 'Lorem ipsum dolor sit amet consectetur. At'
                                '\nlibero feugiat sem aliquet quisque cras'
                                '\nultricies pellentesque. Morbi mauris ac'
                                '\ntristique tempor sed id. Id amet nullam.',
                            textColor: Colors.white,
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                               InkWell(
                                onTap: (){},
                                child: Container(
                                  height: 40,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: const Center(
                                    child: MyText(
                                        text: 'Update',fontSize: 16,fontBold: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage(circle),fit: BoxFit.cover),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}