import 'controller/splash_controller.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:flutter/material.dart';class SplashScreen extends GetWidget<SplashController> {const SplashScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.gray900, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), CustomImageView(imagePath: ImageConstant.imgTelevision, height: 99.v, width: 90.h)])))); } 
 }
