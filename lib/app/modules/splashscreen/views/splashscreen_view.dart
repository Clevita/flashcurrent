import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false, 
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              // color: Colors.cyan,
              child: Image.asset(
                "assets/images/Bolt.png",
                height: 70,
                width: 70,
              )),
          Container(
              // color: Colors.lime,
              child: Image.asset(
                "assets/images/Flash Current.png",
                height: 70,
                width: 140,
              )),
        ],
      )),
    );
  }
}
