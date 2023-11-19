import 'package:flutter/cupertino.dart';

class HomeScreenModel{
  final AssetImage? assetImage;
  final String? topText;
  final String? bottomText;
  final Widget? rattingBar;

  HomeScreenModel(
      {this.assetImage, this.topText, this.bottomText, this.rattingBar});
}