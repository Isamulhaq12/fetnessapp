import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../consts/colors.dart';

class MyCustomContainer extends StatelessWidget {
  final String? text;
  final String? buttonText;
  final void Function()? onTap;

  const MyCustomContainer({super.key, this.text, this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
          color: litegreenColor,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(
               text!,style: const TextStyle(
              color: Colors.black,fontWeight: FontWeight.w500
            ),
            ),
            InkWell(
              onTap: onTap,
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: Center(child: Text(buttonText!,style:  const TextStyle(
                  color: Colors.black,fontWeight: FontWeight.w500
                ),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class MyCustomContainer1 extends StatelessWidget {
  final String? text;
  final AssetImage image;
  final void Function()? onTap;

  const MyCustomContainer1({super.key, this.text, this.onTap, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
            color: litegreenColor,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text!,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(image: image),
                  color: litegreenColor,
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
class MyCustomContainer2 extends StatelessWidget {
  final String? text;
  final String? indicatorText;
  final void Function()? onTap;

  const MyCustomContainer2({super.key, this.text, this.indicatorText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
            color: litegreenColor,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text!,style: const TextStyle(
                      color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                  Center(child: CircularPercentIndicator(
                      animation: true,
                      animationDuration: 10000,
                      radius: 40,
                      lineWidth: 4,
                      percent: 0.0,
                      progressColor: bluColor,
                      backgroundColor: liteGray4Color,
                      center:  Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(indicatorText!,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ])
                      )
                  )
                  )
                ])
        ),
      ),
    );
  }
}
